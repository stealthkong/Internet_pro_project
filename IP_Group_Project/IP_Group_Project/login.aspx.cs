using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
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
            bool found = false;

            if (userBox.Text == "")
            {
                Label2.Text = "* The user name field is required";
                Label2.Visible = true;
                return;
            }

            if (passBox.Text == "")
            {
                Label3.Text = "* The email field is required";
                Label3.Visible = true;
                return;
            }

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT count(*) FROM Users WHERE User_Uname='" + userBox.Text + "' AND User_Password='" + passBox.Text + "'";
            cmd.Connection = db;

            db.Open();
            try
            {
                cmd.ExecuteNonQuery();
                int search = Convert.ToInt32(cmd.ExecuteScalar());
                if (search <= 0)
                {
                    Label2.Text = "* Please enter a valid user name and password";
                    Label2.Visible = true;
                    return;
                }
            }
            catch
            {

                Label2.Text = "An error while writing to DB!";
                Label2.Visible = true;
            }
            finally
            {
                db.Close();
            }
            Session["userID"] = userBox.Text;
            Response.Redirect("default.aspx");
        }

        protected void lnkAdminLogin_Click(object sender, EventArgs e)
        {
             Response.Redirect("adminLogin.aspx");
         }
    }
}