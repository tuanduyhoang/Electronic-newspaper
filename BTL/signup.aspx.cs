using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            int a = 0;
            string name = Request.Form["name"];
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            string confirm = Request.Form["confirm_password"];
            Models.User user = new Models.User(name, username, email, password);
            List<Models.User> list_users = (List<Models.User>)Session["ListUser"];
            list_users.Add(user);
            Response.Write("<script> alert('Đăng ký tài khoản thành công.'); </script>");
            Response.Redirect("signin.aspx");
            //    for(int i = 0; i < list_users.Count; i++)
            //    {
            //        if (username == list_users[i].Username)
            //        {
            //            Response.Write("<script> alert('Tên tài khoản đã được sử dụng!'); </script>");
            //            Response.Redirect("signup.aspx");
            //        }
            //        else if (email == list_users[i].Email)
            //        {
            //            Response.Write("<script> alert('Email đã được sử dụng!'); </script>");
            //            Response.Redirect("signup.aspx");
            //        }

            //    }
            //}



        }
    }
}