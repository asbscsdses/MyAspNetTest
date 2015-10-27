using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class ReadAllLines : System.Web.UI.Page
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
                        var lines = File.ReadAllLines(file);

                        foreach (string line in lines)
                        {
                            var box = new TextBox();

                            box.Text = line;

                            Panel1.Controls.Add(box);
                        }
                    }
                }
            }
        }
    }
}