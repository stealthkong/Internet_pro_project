using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_Group_Project
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(Session["userID"] == null)
             {
                 userLog.Text = "fella, Log In!";
                 lnkLogOut.Visible = false;
             }
             else
                 userLog.Text = (string)Session["userID"];
             lnkLogOut.Visible = true;
             lnkLogOut.Text = "Not you? Click Here sucka";
         }
  
         protected void lnkLogOut_Click(object sender, EventArgs e)
         {
             Session["userID"] = null;
          }
    }
}