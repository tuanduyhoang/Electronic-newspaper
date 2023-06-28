<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Menu.Master" AutoEventWireup="true" CodeBehind="congnghe.aspx.cs" Inherits="BTL.congnghe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #congnghe {
            align-content: center;
            margin: 30px 100px;
        }
        #h1_tech{
            font-size: 32px;
        }
        .p_tech{
            font-size:18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="congnghe">
        <h1 id="h1_tech">Samsung đưa công nghệ pin xe điện lên smartphone</h1><br />
        <p class="p_tech">
            Công nghệ pin của xe điện giúp xếp chồng các thành phần chặt hơn, tăng 10% dung lượng so với pin hiện tại trên smartphone.
        </p><br />
        <p class="p_tech">
            Pin xe điện (EV) mới của Samsung là loại pin thế hệ thứ năm với công nghệ giúp pin đạt mật độ năng lượng cao hơn với cùng một kích thước bằng cách xếp chồng các thành phần lên nhau kiểu cầu thang. Giải pháp này giúp tiết kiệm chi phí sản xuất và tăng phạm vi hoạt động của xe điện.
        </p><br />
        <img src="images/congnghe.png" id="img_tech" alt="anhdemo" />
        <p>Các mẫu flagship của Samsung có thể tăng dung lượng pin thêm 10% so với trước. Ảnh: <em>Samsung</em></p><br />
        <p class="p_tech">
            Theo PhoneArena, Samsung đang lên kế hoạch sử dụng công nghệ pin trên xe điện (EV) cho các mẫu pin nhỏ hơn sử dụng trên smartphone. Hãng được cho là đã dành riêng một dây chuyền tại Hungary để sản xuất pin cho điện thoại, cũng như đang làm một dây chuyền thử nghiệm tại Trung Quốc.
        </p><br />
        <p class="p_tech">
            Trước đó, Apple cũng đã làm pin hình chữ L trong một số mẫu iPhone để tăng dung lượng pin. Giải pháp mới của Samsung được đánh giá tốt hơn khi không tăng kích cỡ pin mà tận dụng không gian bên trong viên pin.
        </p><br />
        <p class="p_tech">
            Với công nghệ pin mới, các mẫu smartphone cao cấp như Galaxy S23 Ultra sẽ có pin 5.500 mAh thay vì 5.000 mAh như hiện nay. Còn nếu vẫn giữ nguyên dung lượng pin 5.000 mAh, Samsung sẽ có thêm không gian bên trong máy để bố trí các linh kiện khác, hoặc làm cho smartphone mỏng hơn.
        </p>
    </div>
</asp:Content>
