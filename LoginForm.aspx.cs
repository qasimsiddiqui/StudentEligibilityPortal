using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentEligibilityPortal
{
    public partial class LoginForm : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Login Button pressed
        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Open new connection to database
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                // Command to be executed on database server
                SqlCommand command = new SqlCommand("SELECT * FROM tbl_Users WHERE username = '" + usernameTextBox.Text.Trim() +
                    "' AND password = '" + passwordTextBox.Text.Trim() + "';", sqlConnection);

                SqlDataReader dataReader = command.ExecuteReader();
                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        Response.Write("<script>alert('Login Successful, " + dataReader.GetValue(3).ToString() + "');</script>");
                        Session["username"] = dataReader.GetValue(3).ToString();
                        Session["fullname"] = dataReader.GetValue(1).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("homePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }

                dataReader.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }
    }
}