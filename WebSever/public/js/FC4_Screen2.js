// Yêu cầu dữ liệu bảng
function fn_Table01_SQL_Show(){
    socket.emit("msg_SQL_Show", "true");
    socket.on('SQL_Show',function(data){
        fn_table_01(data);
    });
}
// Hiển thị dữ liệu ra bảng
function fn_table_01(data){
    if(data){
        $("#table_01 tbody").empty();
        var len = data.length;
        var txt = "<tbody>";
        if(len > 0){
            for(var i=0;i<len;i++){
                    txt += "<tr><td>"+data[i].date_time
                        +"</td><td>"+data[i].data_Setpoint
                        +"</td><td>"+data[i].data_PID_Output
                        +"</td><td>"+data[i].data_PID_Freq_Hz
                        +"</td><td>"+data[i].data_PV_Pressure
                        +"</td><td>"+data[i].data_PID_Gain
                        +"</td><td>"+data[i].data_PID_Ti
                        +"</td><td>"+data[i].data_PID_Td
                        +"</td><td>"+data[i].data_On_Off
                        +"</td></tr>";
                    }
            if(txt != ""){
            txt +="</tbody>";
            $("#table_01").append(txt);
            }
        }
    }
}