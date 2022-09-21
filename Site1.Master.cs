using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficeApp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Session["id"] = "1";
            //if (Session["id"] == null && Request["id"] != "0")
            //{
            //    Session["id"] = Request["id"];
            //}
            //else if (Request["id"] == "0" && Session["id"] != null) { Response.Redirect("Login.aspx?id=0",true); }
           
        }
    }
}

