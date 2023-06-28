using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Header_Menu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            icon.Visible = false;
            text_login.Visible = false;
            if (String.IsNullOrEmpty((string)Session["logincheck"]))
            {
                text_login.Visible = true;
            } else
            {
                icon.Visible = true;
            }
        }
        protected void signout_click(object sender, EventArgs e)
        {
            Session["name"] = "";
            Session["username"] = "";
            Session["email"] = "";

            if(Session["logincheck"]=="true")
            {
                Session["logincheck"] = "";
            }
            Response.Redirect("index.aspx");
        }
    }
}