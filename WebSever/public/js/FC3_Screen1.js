// Hàm hiển thị màu nút nhấn
function fn_btt_Color(tag, bttID, on_Color, off_Color){
    socket.on(tag,function(data){
        if(data == true){
            document.getElementById(bttID).style.backgroundColor = on_Color;
        } else{
            document.getElementById(bttID).style.backgroundColor = off_Color;
        }
    });
}

// Hàm chức năng hiển thị trạng thái symbol
function fn_SymbolStatus(ObjectID, SymName, Tag)
{
    var imglink_0 = "images/Symbol/" + SymName + "_0.png"; // Trạng thái tag = 0
    var imglink_1 = "images/Symbol/" + SymName + "_1.png"; // Trạng thái tag = 1
    socket.on(Tag, function(data){
        if (data == 0)
        {
            document.getElementById(ObjectID).src = imglink_0;
        }
        else if (data == 1)
        {
            document.getElementById(ObjectID).src = imglink_1;
        }
    });
}

///// HÀM CHỨC NĂNG NÚT NHẤN SỬA //////
// Tạo 1 tag tạm báo đang sửa dữ liệu
var Auto_data_edditting = false;
function fn_Auto_EditBtt(bttSaveID, bttEditID){
    // Cho hiển thị nút nhấn lưu
    fn_DataEdit(bttSaveID, bttEditID);
    // Cho tag báo đang sửa dữ liệu lên giá trị true
    Auto_data_edditting = true;
    // Kích hoạt chức năng sửa của các IO Field
    document.getElementById("tbx_SetPoint").disabled = false;
    document.getElementById("tbx_PID_Gain").disabled = false;
    document.getElementById("tbx_PID_Ti").disabled = false;
    document.getElementById("tbx_PID_Td").disabled = false;
}
///// HÀM CHỨC NĂNG NÚT NHẤN LƯU //////
function fn_Auto_SaveBtt(bttSaveID, bttEditID){
    // Cho hiển thị nút nhấn sửa
    fn_DataEdit(bttEditID, bttSaveID);
    // Cho tag đang sửa dữ liệu về 0
    Auto_data_edditting = false;
                        // Gửi dữ liệu cần sửa xuống PLC
    var data_edit_array = [document.getElementById('tbx_SetPoint').value,
                            document.getElementById('tbx_PID_Gain').value,
                            document.getElementById('tbx_PID_Ti').value,
                            document.getElementById('tbx_PID_Td').value];
    socket.emit('cmd_Auto_Edit_Data', data_edit_array);
    alert('Dữ liệu đã được lưu!');
    // Vô hiệu hoá chức năng sửa của các IO Field
    document.getElementById("tbx_SetPoint").disabled = true;
    document.getElementById("tbx_PID_Gain").disabled = true;
    document.getElementById("tbx_PID_Ti").disabled = true;
    document.getElementById("tbx_PID_Td").disabled = true;
}

// Hàm chức năng đọc dữ liệu lên IO Field
function fn_IOFieldDataShow(tag, IOField, tofix)
{
    socket.on(tag, function(data){
        if (tofix == 0 & Auto_data_edditting != true)
        {
            document.getElementById(IOField).value = data;
        }
        else if(Auto_data_edditting != true)
        {
            document.getElementById(IOField).value = data.toFixed(tofix);
        }
    });
}