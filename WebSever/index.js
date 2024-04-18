//////////////////////CẤU HÌNH KẾT NỐI KEPWARE////////////////////
const {TagBuilder, IotGateway} = require('kepserverex-js');
const tagBuilder = new TagBuilder({ namespace: 'Channel1.Device1' });
const iotGateway = new IotGateway({
    host: '127.0.0.1',
    port: 5000
});

/////////////HÀM ĐỌC/GHI DỮ LIỆU XUỐNG KEPWARE(PLC)//////////////
//Đọc dữ liệu
var tagArr = [];
function fn_tagRead(){
	iotGateway.read(TagList).then((data)=>{
		var lodash = require('lodash');
		tagArr = lodash.map(data, (item) => item.v);
		console.log(tagArr);
	});
}
// Ghi dữ liệu
function fn_Data_Write(tag,data){
    tagBuilder.clean();
    const set_value = tagBuilder
        .write(tag,data)
        .get();
    iotGateway.write(set_value);
}

///////////////////////////ĐỊNH NGHĨA TAG////////////////////////
// Khai báo tag
var WebSite_Setpoint = 'WebSite_Setpoint';
var WebSite_PID_Output 	= 'WebSite_PID_Output';
var WebSite_PID_Freq_Hz = 'WebSite_PID_Freq_Hz';
var WebSite_PV_Pressure = 'WebSite_PV_Pressure';
var WebSite_PID_Gain = 'WebSite_PID_Gain';
var WebSite_PID_Ti = 'WebSite_PID_Ti';
var WebSite_PID_Td = 'WebSite_PID_Td';
var WebSite_On_Off = 'WebSite_On_Off';
var sql_insert_Trigger = 'sql_insert_Trigger';

// Đọc dữ liệu
const TagList = tagBuilder
.read(sql_insert_Trigger)
.read(WebSite_Setpoint)
.read(WebSite_PID_Output)
.read(WebSite_PID_Freq_Hz)
.read(WebSite_PV_Pressure)
.read(WebSite_PID_Gain)
.read(WebSite_PID_Ti)
.read(WebSite_PID_Td)
.read(WebSite_On_Off)
.get();

///////////////////////////QUÉT DỮ LIỆU////////////////////////
// Tạo Timer quét dữ liệu
setInterval(
	() => fn_read_data_scan(),
	1000 //100ms = 1s
);

// Quét dữ liệu
function fn_read_data_scan(){
	fn_tagRead();	// Đọc giá trị tag
    fn_sql_insert(); // Ghi dữ liệu vào SQL
}

//
// /////////////////////////KẾT NỐI CƠ SỞ DỮ LIỆU SQL/////////////////////
// Khai báo SQL
var mysql = require('mysql');
var sqlcon = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123456",
  database: "sql_plc_datn",
  dateStrings:true
});
// Ghi dữ liệu vào SQL
var sqlins_done = false; // Biến báo đã ghi xong dữ liệu

function fn_sql_insert() {
    var trigger = tagArr[0]; // Trigger đọc về từ PLC
    var sqltable_Name = "plc_data";
    // Lấy thời gian hiện tại
    var tzoffset = (new Date()).getTimezoneOffset() * 60000; //Vùng Việt Nam (GMT7+)
    var temp_datenow = new Date();
    var timeNow = (new Date(temp_datenow - tzoffset)).toISOString().slice(0, -1).replace("T", " ");
    var timeNow_toSQL = "'" + timeNow + "',";

    // Dữ liệu đọc lên từ các tag
    var data_Setpoint = "'" + tagArr[1] + "',";
    var data_PID_Output = "'" + tagArr[2] + "',";
    var data_PID_Freq_Hz = "'" + tagArr[3] + "',"; // Corrected comma placement
    var data_PV_Pressure = "'" + tagArr[4] + "',"; // Corrected comma placement
    var data_PID_Gain = "'" + tagArr[5] + "',"; // Corrected comma placement
    var data_PID_Ti = "'" + tagArr[6] + "',"; // Corrected comma placement
    var data_PID_Td = "'" + tagArr[7] + "',"; // Corrected comma placement
    var data_On_Off = "'" + tagArr[8] + "'";

    // Ghi dữ liệu vào SQL
    if (trigger == true && trigger != sqlins_done) { // Replaced single '&' with '&&'
        var sqlins1 = "INSERT INTO " +
            sqltable_Name +
            " (date_time, data_Setpoint, data_PID_Output, data_PID_Freq_Hz, data_PV_Pressure, data_PID_Gain, data_PID_Ti, data_PID_Td, data_On_Off) VALUES (";
        var sqlins2 = timeNow_toSQL +
            data_Setpoint +
            data_PID_Output +
            data_PID_Freq_Hz +
            data_PV_Pressure +
            data_PID_Gain +
            data_PID_Ti +
            data_PID_Td +
            data_On_Off;
        var sqlins = sqlins1 + sqlins2 + ");";
        // Thực hiện ghi dữ liệu vào SQL
        sqlcon.query(sqlins, function(err, result) {
            if (err) {
                console.log(err);
            } else {
                console.log("SQL - Ghi dữ liệu thành công");
            }
        });
    }
    sqlins_done = trigger;
}


// /////////////////////////THIẾT LẬP KẾT NỐI WEB/////////////////////////
var express = require("express");
var app = express();
app.use(express.static("public"));
app.set("view engine", "ejs");
app.set("views", "./views");
var server = require("http").Server(app);
var io = require("socket.io")(server);
server.listen(3000);
// Home calling
app.get("/", function(req, res){
    res.render("home")
});

// ///////////LẬP BẢNG TAG ĐỂ GỬI QUA CLIENT (TRÌNH DUYỆT)///////////
function fn_tag(){
    io.sockets.emit("sql_insert_Trigger", tagArr[0]);    
    io.sockets.emit("WebSite_Setpoint", tagArr[1]);
    io.sockets.emit("WebSite_PID_Output", tagArr[2]);
    io.sockets.emit("WebSite_PID_Freq_Hz", tagArr[3]);
    io.sockets.emit("WebSite_PV_Pressure", tagArr[4]);
    io.sockets.emit("WebSite_PID_Gain", tagArr[5]);
    io.sockets.emit("WebSite_PID_Ti", tagArr[6]);
    io.sockets.emit("WebSite_PID_Td", tagArr[7]);
    io.sockets.emit("WebSite_On_Off", tagArr[8]);
}

// ++++++++++++++++++++++++++GHI DỮ LIỆU XUỐNG PLC+++++++++++++++++++++++++++
// MÀN HÌNH ĐIỀU KHIỂN
// ///////////GHI DỮ LIỆU NÚT NHẤN XUỐNG PLC///////////////////
io.on("connection", function(socket)
{
    socket.on("Client-send-cmdSys", function(data){
		fn_Data_Write(WebSite_On_Off,data);
	});
});
// ///////////GHI DỮ LIỆU CHỈNH SỬA XUỐNG PLC///////////////////
io.on("connection", function(socket)
{
    socket.on("cmd_Auto_Edit_Data", function(data){
        fn_Data_Write(WebSite_Setpoint,data[0]);
        fn_Data_Write(WebSite_PID_Gain,data[1]);
        fn_Data_Write(WebSite_PID_Ti,data[2]);
        fn_Data_Write(WebSite_PID_Td,data[3]);
    });
});

// ///////////GỬI DỮ LIỆU BẢNG TAG ĐẾN CLIENT (TRÌNH DUYỆT)///////////
io.on("connection", function(socket){
    socket.on("Client-send-data", function(data){
    fn_tag();
});});

// Đọc dữ liệu từ SQL
io.on("connection", function(socket){
    socket.on("msg_SQL_Show", function(data)
    {
        var sqltable_Name = "plc_data";
        var query = "SELECT * FROM " + sqltable_Name + ";"
        sqlcon.query(query, function(err, results, fields) {
            if (err) {
                console.log(err);
            } else {
                const objectifyRawPacket = row => ({...row});
                const convertedResponse = results.map(objectifyRawPacket);
                socket.emit('SQL_Show', convertedResponse);
            }
        });
    });
});