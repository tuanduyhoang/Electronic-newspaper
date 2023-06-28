<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="BTL.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <style>
        body {
            display: flex;
            justify-content: center;
        }

        #all {
            display: flex;
            justify-content: center;
            border: 2px solid black;
            border-radius: 5px;
            max-width: 400px;
            padding: 5px 100px;
            background-color: #b3ffec;
        }

        input {
            width: 100%;
            line-height: 150%;
            border-radius: 5px;
        }

        h2 {
            font-size: 50px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        p {
            text-align: center;
            font-size: 20px;
        }

        #btnSignup {
            width: 100%;
            line-height: 170%;
            border: 1px solid black;
            border-radius: 5px;
            margin-bottom: 20px;
            margin-top: 20px;
            cursor: pointer;
            background-color: #00cc99;
        }

            #btnSignup:hover {
                line-height: 180%;
            }

        a {
            width: 100%;
            line-height: 150%;
            border: 1px solid black;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #e6fff9;
        }
    </style>
</head>
<body>
    <div id="all">
        <form id="form1" method="post" runat="server">
            <div>
                <h2>Đăng ký</h2>
                <p>Họ và tên</p>
                <input type="text" id="name" name="name" />
                <p>Tên tài khoản</p>
                <input type="text" id="username" name="username" />
                <p>Email</p>

                <input type="email" id="email" name="email" />
                <p>Số điện thoại</p>
                <input type="text" id="sdt" name ="sdt" />
                <p>Mật khẩu</p>
                <input type="password" id="password" name="password" />
                <p>Nhập lại mật khẩu</p>
                <input type="password" id="confirm_password" name="confirm_password" />
                <br />
                <%--<button type="submit" runat="server">Đăng ký</button>--%>
                <asp:Button ID="btnSignup" Text=" Đăng ký" runat="server" OnClientClick="return check()" OnClick="btnSignup_Click" />
                <a href="signin.aspx">Đăng nhập</a>
                <%--placeholder="nhập họ và tên"
                placeholder="nhập tên tài khoản "
                placeholder="abc@gmail.com"
                placeholder="nhap so dien thoai"
                placeholder="nhập mật khẩu"
                placeholder="xác thực lại mật khẩu"--%>
            </div>
        </form>
    </div>
    <script>
        function check() {
            var name = document.getElementById("name").value;
            var username = document.getElementById("username").value;
            var email = document.getElementById("email").value;
            var mobile = document.getElementById("sdt").value;
            var password = document.getElementById("password").value;
            var confirm = document.getElementById("confirm_password").value;
            var formatUname = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
            var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
           /*var mobile = $('#sdt').val();*/
            
            const formatTen = /[0-9]/;
            const check_pass1 = /^[a-zA-Z]+$/;
            const check_pass2 = /^\d+$/;

            if (name == "" && username == "" && email == "" && mobile == "" && password == "" && confirm == "") {
                alert("Vui lòng nhập thông tin!");
                return false;
            } else if (name == "") {
                alert("Vui lòng nhập tên!");
                return false;
            } else if (username == "") {
                alert("Vui lòng nhập tên tài khoản!");
                return false;
            } else if (email == "")
            {
                alert("Vui lòng nhập email!");
                return false;

            }
            else if (mobile == "") {
                alert("Vui lòng nhập số điện thoại!");
                return false;
            }
            else if (mobile.charAt(0) != '0') {
                alert("SDT sai định dạng , phải bắt đầu bằng số 0");
                return false;
            }
            else if (mobile.length < 8 || mobile.length > 11) {
                alert("SDT sai định dạng , SDT nhiều hơn 8 và nhỏ hơn 11 kí tự");
                return false;
            }
            
            else if (password == "") {
                alert("Vui lòng nhập mật khẩu!");
                return false;
            } else if (confirm == "") {
                alert("Vui lòng xác nhập lại mật khẩu!");
                return false;
            } else if (password != confirm) {
                alert("Mật khẩu xác nhận không trùng khớp!");
                return false;
            }
            else if (email.indexOf("@gmail.com") < 0) {
                alert("Email chưa đúng định dạng!");
                return false;
            }
            else if (username != "" && formatUname.test(username) == true) {
                alert("Tên tài khoản không được chứa các ký tự đặc biệt!");
                return false;
            }

            else if (name != "" && formatTen.test(name) == true) {
                alert("Tên không được chứa số!");
                return false;
            }
            else if (password.length < 6) {
                alert("Vui lòng nhập lại mật khẩu dài hơn 6 kí tự!");
                return false;
            }
            else if (check_pass1.test(password) == true || check_pass2.test(password) == true) {
                alert("Mật khẩu phải có cả chữ và số!");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</body>
</html>
