using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTracker
{
    public partial class DefaultWithMaster : System.Web.UI.Page
    {
       void Page_Prelnit(object sender,EventArgs e)
        {
            if(Request.QueryString["Print"]!=null)
                MasterPageFile = "/Print.Master";
               
        }
        protected void page_Load(object sender)
        {

        }
    }
}