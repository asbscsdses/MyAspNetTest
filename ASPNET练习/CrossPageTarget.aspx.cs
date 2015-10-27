using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class CrossPageTarget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                if (PreviousPage.IsCrossPagePostBack)
                {
                    var title = PreviousPage.FindControl("TextBox1") as TextBox;
                    var member = PreviousPage.FindControl("ListBox1") as ListBox;
                    var time = PreviousPage.FindControl("Calendar1") as Calendar;

                    if (title != null && member != null && time != null)
                    {
                        Label1.Text = title.Text;
                        Label2.Text = "";

                        foreach (ListItem memberItem in member.Items)
                        {
                            if (memberItem.Selected)
                            {
                                Label2.Text += memberItem.Text + ",";
                            }
                        }

                        Label3.Text = time.SelectedDate.ToLongDateString();
                    }
                }
            }
        }
    }
}