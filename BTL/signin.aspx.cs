using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class singin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnsignin_Click(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            List<Models.User> list_users = (List<Models.User>)Session["ListUser"];
            for (int i = 0; i < list_users.Count; i++)
            {
                if (username == list_users[i].Username && password == list_users[i].Password)
                {
                    Session["logincheck"] = "true";
                    Session["name"] = list_users[i].Name;
                    Session["username"] = list_users[i].Username;
                    Session["email"] = list_users[i].Email;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Session["logincheck"] = "";
                    Response.Write("<script> alert('Tài khoản không hợp lệ! Xin mời nhập lại!'); </script>");
                }
            }
        }
    }
}