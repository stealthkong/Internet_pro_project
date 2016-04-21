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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            if (unameBox.Text == "")
            {
                Label3.Text = "* Please enter a valid username";
                Label3.Visible = true;
                return;
            }

            if (passBox.Text == "")
            {
                Label5.Text = "* please enter a valid password";
                Label5.Visible = true;
                return;
            }

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT count(*) FROM Admin WHERE Admin_UName='" + unameBox.Text + "' AND Admin_Password='" + passBox.Text + "'";
            cmd.Connection = db;

            db.Open();
            try
            {
                cmd.ExecuteNonQuery();
                int search = Convert.ToInt32(cmd.ExecuteScalar());
                if (search <= 0)
                {
                    lblError.Text = "* Please enter a valid user name and password";
                    lblError.Visible = true;
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
            Response.Redirect("adminPage.aspx");
        }

     
    }
}