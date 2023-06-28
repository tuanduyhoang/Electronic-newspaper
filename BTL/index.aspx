<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Menu.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTL.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #content {
            align-content: center;
            margin: 30px 100px;
        }
        .anhdemo_index{
            margin-right: 10px;
            width: 300px;
            height: 200px;
        }
        .content_child{
            /*display:flex;*/
        }
        #content a{
            text-decoration: none;
            text-decoration-color: unset;
        }
        #content a:hover{
            color: red;
        }
        .div1 {
            width:700px;
            display:flex;
            padding:10px;
        }
        .div2 {
            width:700px;
            display:flex;
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="div1">
            <a href="chinhtri.aspx">
            <div class="content_child">
                <img class="anhdemo_index" src="images/demo.jpg" alt="anhdemo"/>
                <div>
                    <h3>Chính trị gia Nga nói đã tiêm 7 mũi vaccine</h3>
                    <p>
                        Vladimir Zhirinovsky, lãnh đạo đảng LDPR, tuyên bố đã tiêm 7 mũi vaccine và tự coi mình là minh chứng cho độ an toàn và hiệu quả của vaccine...
                    </p>
                </div>
            </div><hr style="width:90%" />
        </a> <br />
        <a href="kinhte.aspx">
            <div class="content_child">
                <img class="anhdemo_index" src="images/demo.jpg" alt="anhdemo"/>
                <div>
                    <h3>Đế chế kinh tế Ngoại hạng Anh</h3>
                    <p>
                        ANH - Giải Ngoại hạng Anh kiếm được khoảng 10 tỷ USD mỗi năm, cao hơn GDP của 50 quốc gia trên thế giới...
                    </p>
                </div>
                
            </div><hr />
        </a><br />
        </div>
        
        <div class="div2">
            <a href="congnghe.aspx">
            <div class="content_child">
                <img class="anhdemo_index" src="images/demo.jpg" alt="anhdemo"/>
                <div>
                    <h3>Samsung đưa công nghệ pin xe điện lên smartphone</h3>
                    <p>
                        Công nghệ pin của xe điện giúp xếp chồng các thành phần chặt hơn, tăng 10% dung lượng so với pin hiện tại trên smartphone...
                    </p>
                </div>
            </div>
        </a>
            <%--<a href="congnghe.aspx" style="margin-left:10%;">
            <div class="content_child">
                <img class="anhdemo_index" src="images/demo.jpg" alt="anhdemo"/>
                <div>
                    <h3>Samsung đưa công nghệ pin xe điện lên smartphone</h3>
                    <p>
                        Công nghệ pin của xe điện giúp xếp chồng các thành phần chặt hơn, tăng 10% dung lượng so với pin hiện tại trên smartphone...
                    </p>
                </div>
            </div>
        </a>--%>
        </div>
        
    </div>
</asp:Content>