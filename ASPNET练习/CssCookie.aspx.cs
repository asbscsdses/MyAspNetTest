using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class CssCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("css");

            ck.Values.Add("color", DropDownList1.SelectedValue);
            ck.Values.Add("fontsize", DropDownList2.SelectedValue);
            ck.Expires = DateTime.MaxValue;

            Response.Cookies.Add(ck);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var ck = Request.Cookies["css"];
            
            if (ck != null)
            {
                Label1.Style.Add("color", ck.Values["color"]);
                Label1.Style.Add("font-size", ck.Values["fontsize"]);
            }
        }
    }
}