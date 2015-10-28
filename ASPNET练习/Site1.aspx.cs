using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class Site1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            var typeid = BulletedList1.Items[e.Index].Value;

            Session["CID"] = typeid;

            Response.Redirect("SitePage.aspx");
        }
    }
}