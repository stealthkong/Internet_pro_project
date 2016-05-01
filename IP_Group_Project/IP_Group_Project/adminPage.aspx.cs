using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace IP_Group_Project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Ticket_Name"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtName")).Text;
            SqlDataSource2.InsertParameters["Ticket_Description"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtDescription")).Text;
            SqlDataSource2.InsertParameters["Ticket_Date"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtDate")).Text;
            SqlDataSource2.InsertParameters["Ticket_Genre"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddlInsertGenre")).SelectedValue;
            SqlDataSource2.InsertParameters["Ticket_Price"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource2.Insert();

        }

        protected void lbInsertUser_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["User_Uname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtUser")).Text;
            SqlDataSource1.InsertParameters["User_Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPassword")).Text;
            SqlDataSource1.InsertParameters["User_FName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtFName")).Text;
            SqlDataSource1.InsertParameters["User_LName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLName")).Text;
            SqlDataSource1.InsertParameters["User_Street"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAddress")).Text;
            SqlDataSource1.InsertParameters["User_City"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCity")).Text;
            SqlDataSource1.InsertParameters["User_Zip"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtZip")).Text;
            SqlDataSource1.InsertParameters["User_DOB"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDOB")).Text;
            SqlDataSource1.InsertParameters["User_Phone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPhone")).Text;
            SqlDataSource1.InsertParameters["User_Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;

            SqlDataSource1.Insert();
        }

        protected void exitButton_Click(object sender, EventArgs e)
        {
            Session["userID"] = null;
            Response.Redirect("default.aspx");
        }
    }
}