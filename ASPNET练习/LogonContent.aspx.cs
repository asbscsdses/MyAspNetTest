using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class LogonContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["room"] == null)
            {
                Application["room"] = new Panel();
            }

            holder.Controls.Add((Panel)Application["room"]);
        }
    }
}