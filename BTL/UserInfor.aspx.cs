using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class UserInfor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void GetUser()
        {
            //Response.Write("<h1 id='text_head'>Thông tin cá nhân: </h1> <br>");
            
            //Response.Write("<h5> Tên người dùng: </h5>" + Session["name"]);
            
            //Response.Write("<h5>Tài khoản: </h5>" + Session["username"] +
            //    "<h5>Email: </h5>" + Session["email"] +
            //    "<br>-------------------------------------");
            Response.Write("<div id='userinfor'>" +
                "<h1 id='text_head'>Thông tin cá nhân: </h1> " +
                "<h5> Tên người dùng: " +Session["name"]+ "</ span > </h5>" +
                "<h5>Tài khoản: "+ Session["username"] + " </ span > </h5>" +
                "<h5>Email: " + Session["email"] + " </ span ></h5>"  +
                "</div>");
        }
    }
}