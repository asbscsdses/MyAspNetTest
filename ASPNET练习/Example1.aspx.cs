using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class Example1 : System.Web.UI.Page
    {
        private const string seperator = "\u0080";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Add(TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text))
            {
                TextBox3.Text += TextBox1.Text + seperator;

                TextBox1.Text = "";
            }

            foreach (string food in TextBox3.Text.Split(new string[] { seperator }, StringSplitOptions.RemoveEmptyEntries))
            {
                CheckBox box = new CheckBox { Text = food };

                Panel1.Controls.Add(box);
            }
        }
    }
}