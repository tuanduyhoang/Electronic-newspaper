<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Menu.Master" AutoEventWireup="true" CodeBehind="UserInfor.aspx.cs" Inherits="BTL.UserInfor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            font-size: 20px;
            
        }
        #userinfor{
            margin: 50px 200px;
            border: 1px solid black;
            background-color: #f5f5f5;
            padding: 30px;
            height: 300px;
        }
        h1{
            margin-top: 50px;
            margin-bottom: 20px;
        }
        h1 , h5{
            line-height: 150%;
            text-align: center;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%GetUser(); %>
</asp:Content>
