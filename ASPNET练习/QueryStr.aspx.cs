using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class QueryStr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            
            if (name != null)
            {
                Literal1.Text += name;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueryStr.aspx?name=" + TextBox1.Text);
        }
    }
}