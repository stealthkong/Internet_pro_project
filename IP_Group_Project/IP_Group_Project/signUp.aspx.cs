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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void signupBtn_Click(object sender, EventArgs e)
        {
            bool exit = false;
            if (userBox.Text == "")
            {
                Label11.Visible = true;
                exit = true;
            }
            if (fnameBox.Text == "")
            {
                Label12.Visible = true;
                exit = true;
            }
            if (lnameBox.Text == "")
            {
                Label13.Visible = true;
                exit = true;
            }
            if (addrBox.Text == "")
            {
                Label14.Visible = true;
                exit = true;
            }

            if (cityBox.Text == "")
            {
                Label15.Visible = true;
                exit = true;
            }

            if (zipBox.Text == "")
            {
                Label16.Visible = true;
                exit = true;
            }

            if (dobBox.Text == "")
            {
                Label17.Visible = true;
                exit = true;
            }

            if (phoneBox.Text == "")
            {
                Label18.Visible = true;
                exit = true;
            }

            if (emailBox.Text == "")
            {
                Label19.Visible = true;
                exit = true;
            }

            if (passBox.Text == "")
            {
                Label21.Visible = true;
                exit = true;
            }

            if (RepassBox.Text != passBox.Text || RepassBox.Text == "")
            {
                Label23.Visible = true;
                exit = true;
            }

            if (exit)
            {
                return;
            }

            string uname = userBox.Text;
            string pass = passBox.Text;
            string fname = fnameBox.Text;
            string lname = lnameBox.Text;
            string address = addrBox.Text;
            string city = cityBox.Text;
            string zip = zipBox.Text;
            string dob = dobBox.Text;
            string phone = phoneBox.Text;
            string email = emailBox.Text;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO \"Users\" (User_UName, User_Password, User_FName, User_LName, User_Street, User_City, User_Zip, User_DOB, User_Phone, User_Email) VALUES ('" + uname + "', '" + pass + "', '" + fname + "', '" + lname + "', '" + address + "', '" + city + "', '" + zip + "', '" + dob + "', '" + phone + "', '" + email + "')";
            cmd.Connection = db;

            db.Open();
            try
            {
                cmd.ExecuteNonQuery();
                int search = Convert.ToInt32(cmd.ExecuteScalar());
                if (search > 0)
                {
                    labelError.Text = "* Sorry, this username is already in use. Please try again";
                    labelError.Visible = true;
                    return;
                }
            }
            catch
            {
                labelError.Text = "An error occured while writing to the database";
                labelError.Visible = true;
                return;
            }
            finally
            {
                db.Close();
            }
            if (exit)
            {
                Response.Redirect("default.aspx");
            }
            Session["userID"] = userBox.Text;
            Response.Redirect("default.aspx");
        }
    }
}