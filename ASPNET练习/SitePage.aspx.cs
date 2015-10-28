using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class SitePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var index = 0;
            var selIndex = 0;

            foreach (ListItem item in DropDownList1.Items)
            {
                item.Selected = false;

                if (item.Value == (string)Session["CID"])
                {
                    selIndex = index;
                }

                index++;
            }

            DropDownList1.SelectedIndex = selIndex;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CID"] = DropDownList1.SelectedValue;
        }
    }
}