using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(DateTime.Now.ToLongTimeString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["uid"] = TextBox1.Text;
            Server.Transfer("Logon.aspx");
        }
    }
}