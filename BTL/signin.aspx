<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="BTL.singin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <style>
        body{
            display: flex;
            justify-content: center;
            padding-top: 50px;
        }
        #all{
            display: flex;
            justify-content: center;
            border: 2px solid black;
            border-radius: 5px;
            max-width: 400px;
            padding: 20px 50px;
            background-color: #b3ffec;
        }
        h2{
            font-size: 50px;
        }
        input {
            width: 100%;
            line-height: 220%;
            margin-bottom: 10%;
            border-radius: 5px;
        }
        p {
            text-align: center;
            font-size: 20px;
        }
        #btnsignin{
            width: 100%;
            line-height: 220%;
            border: 1px solid black;
            cursor: pointer;
            border-radius: 5px;
            margin-bottom: 20px;
            background-color:#00cc99;
        }#btnsignin:hover{
             line-height: 230%;
         }
        a{
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
        <form id="form1" method="post" runat="server" >
        <div id="child">
            <h2>Đăng nhập</h2>
            <p>Tài khoản</p>
            <input id="username" type="text" name="username" />
            <p>Mật khẩu</p>
            <input id="password" type="password" name="password"  />
            <br />
            <%--<button type="submit" runat="server" oclick="check()" >Đăng nhập</button>--%>
            <asp:Button OnClientClick="return check()" OnClick="btnsignin_Click"  ID="btnsignin" runat="server" text="Đăng nhập"/>
            <a href="signup.aspx">Đăng kí</a>
        </div>
    </form>
    </div>
    <script>
        function check() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            if (username == "" && password == "") {
                alert("Vui lòng nhập thông tin!");
                return false;
            } else if (username == "") {
                alert("Vui lòng nhập tên tài khoản!");
                return false;
            } else if (password == "") {
                alert("Vui lòng nhập mật khẩu!");
                return false;
            } else {
                return true;
            }
        }
    </script>
</body>
</html>
