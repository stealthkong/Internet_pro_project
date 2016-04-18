using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_Group_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("signUp.aspx");
        }

        protected void signInBtn_Click(object sender, EventArgs e)
        {
            if (userBox.Text == "")
            {
                Errorlbl.Text = "* The user name field is required";
                Errorlbl.Visible = true;
                return;
            }

            if (passBox.Text == "")
            {
                Errorlbl.Text = "* The email field is required";
                Errorlbl.Visible = true;
                return;
            }
        }
    }
}