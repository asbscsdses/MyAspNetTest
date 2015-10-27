using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class ReadAllText : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var fname = Request.QueryString["fname"];

                if (fname != null)
                {
                    var file = Path.Combine(MapPath("textfiles"), fname);

                    if (File.Exists(file))
                    {
                        TextBox1.Text = File.ReadAllText(file);
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var file = Path.Combine(MapPath("textfiles"), Request.QueryString["fname"]);

            File.WriteAllText(file, TextBox1.Text);
        }
    }
}