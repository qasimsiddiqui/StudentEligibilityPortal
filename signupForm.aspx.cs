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
    public partial class signupForm : System.Web.UI.Page
    {

        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Register Button is pressed
        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (checkUsernameFromDatabase())
            {
                Response.Write("<script>alert('Username already taken!');</script>");
            }
            else
            {
                createNewUser();
            }
            
        }

        // Check is the username is not already taken 
        bool checkUsernameFromDatabase()
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
                SqlCommand command = new SqlCommand("SELECT * FROM tbl_Users WHERE username='" + usernameTextBox.Text.Trim() + "';", sqlConnection);

                // Get result of sqlCommand into DataTable
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                // Close Connection
                sqlConnection.Close();
                
                // return TRUE if username already exists, FALSE otherwise.
                return dataTable.Rows.Count >= 1;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }

        // Adds a new user to the tbl_Users table
        void createNewUser()
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
                SqlCommand command = new SqlCommand("INSERT INTO tbl_Users(fullname, email, username, password, isAdmin) VALUES " +
                    "(@fullname, @email, @username, @password, @isAdmin)", sqlConnection);

                command.Parameters.AddWithValue("@fullname", nameTextBox.Text.Trim());
                command.Parameters.AddWithValue("@email", emailTextBox.Text.Trim());
                command.Parameters.AddWithValue("@username", usernameTextBox.Text.Trim());
                command.Parameters.AddWithValue("@password", passwordTextBox.Text.Trim());
                command.Parameters.AddWithValue("@isAdmin", false);

                command.ExecuteNonQuery();

                // Close Connection
                sqlConnection.Close();

                // Successful message (Todo) 
                Response.Write("<script>alert('Registeration Successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }
    }
}