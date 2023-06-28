using BTL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["ListUser"] = new List<Models.User>();
            List<User> list_users = (List<User>)Session["ListUser"];
            list_users.Add(new User("hoangduy"/*ten*/, "dh1"/*user*/, "sc.hoangduy@gmail.com"/*email*/, "dh9899"/*pass*/));
            list_users.Add(new User("hoangtuanduy", "htd", "sc.hoangtuanduy@gmail.com", "Hoangtuanduy979899!"));
        }
    }
}