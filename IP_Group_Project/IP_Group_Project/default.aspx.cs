using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_Group_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         protected void purchaseButton_Click(object sender, EventArgs e)
         {
             Button btnTP = (Button)(sender);
             Session["ticketName"] = btnTP.CommandArgument;
 
             Response.Redirect("ticketsPage.aspx", false);
             Context.ApplicationInstance.CompleteRequest();
         }
    }
}