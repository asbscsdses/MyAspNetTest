using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("uid");
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label name= new Label();
            Label time = new Label();
            Label content = new Label();
            var newline = new Literal();
            
            name.Text = Session["uid"].ToString();
            time.Text = String.Format("[{0}]", DateTime.Now.ToLongTimeString());
            content.Text = TextBox1.Text;

            newline.Text = "<br />";

            var panel = Application["room"] as Panel;

            if (panel != null)
            {
                Application.Lock();
                panel.Controls.AddAt(0, newline);
                panel.Controls.AddAt(0, content);
                panel.Controls.AddAt(0, time);
                panel.Controls.AddAt(0, name);
                Application.UnLock();
            }
        }
    }
}