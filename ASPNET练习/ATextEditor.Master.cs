using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class ATextEditor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var files = Directory.GetFiles(MapPath("textfiles"), "*txt");

            foreach (string file in files)
            {
                if (File.Exists(file))
                {
                    var name = Path.GetFileName(file);

                    var label = new Label();
                    var link1 = new HyperLink();
                    var link2 = new HyperLink();
                    var panel = new Panel();

                    label.Text = name;
                    link1.Text = "全部读取";
                    link2.Text = "分行读取";

                    link1.NavigateUrl = "ReadAllText.aspx?fname=" + name;
                    link2.NavigateUrl = "ReadAllLines.aspx?fname=" + name;

                    panel.Controls.Add(label);
                    panel.Controls.Add(link1);
                    panel.Controls.Add(link2);

                    right.Controls.Add(panel);
                }
            }
        }
    }
}