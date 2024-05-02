// Danh sách người dùng
var users = [
    { username: "admin", password: "123456", role: "admin" },
    { username: "user1", password: "1", role: "user" },
    { username: "user2", password: "2", role: "user" }
];

// Chương trình con
function login() {
    var username = document.getElementById("inputuser").value;
    var password = document.getElementById("inputpass").value;

    // Tìm người dùng trong danh sách
    var currentUser = users.find(function(user) {
        return user.username === username && user.password === password;
    });

    // Nếu người dùng tồn tại
    if (currentUser) {
        // Lưu thông tin người dùng vào local storage
        localStorage.setItem('currentUser', JSON.stringify(currentUser));
        
        // Cập nhật thời gian cuối cùng của hoạt động
        localStorage.setItem('lastActivityTime', Date.now());

        // Chuyển đến màn hình tương ứng với vai trò của người dùng
        if (currentUser.role === "admin") {
            fn_ScreenChange('Screen_Main', 'Screen_1', 'Screen_2', 'Screen_logout');
        } else if (currentUser.role === "user") {
            fn_ScreenChange('Screen_Main', 'Screen_1', 'Screen_2', 'Screen_logout');
            document.getElementById("btt_Screen_2").disabled = true;
        }

        // Ẩn modal đăng nhập
        document.getElementById('id01').style.display = 'none';
    } else {
        window.location.href = ''; // Điều hướng đến trang đăng nhập lại
    }
}

function logout() {
    // Xoá thông tin người dùng và thời gian cuối cùng của hoạt động từ local storage
    localStorage.removeItem('currentUser');
    localStorage.removeItem('lastActivityTime');

    alert("Đăng xuất thành công");
    fn_ScreenChange('Screen_logout', 'Screen_Main', 'Screen_1', 'Screen_2');
}

// Kiểm tra thời gian cuối cùng của hoạt động và đăng xuất sau 10 phút
setInterval(function() {
    var lastActivityTime = localStorage.getItem('lastActivityTime');
    if (lastActivityTime && (Date.now() - lastActivityTime > 10 * 60 * 1000)) {
        logout();
    }
}, 1000);
