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
    public partial class adminUniversityManagement : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            universityGridView.DataBind();
        }

        // Go Button click event
        protected void goButton_Click(object sender, EventArgs e)
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
                SqlCommand command;
                command = new SqlCommand("SELECT * FROM tbl_Universities WHERE universityID='" +  universityIDTextBox.Text.Trim() + "';", sqlConnection);

                // Get result of sqlCommand into DataTable
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                // Close Connection
                sqlConnection.Close();

                // return TRUE if username already exists, FALSE otherwise.
                if(dataTable.Rows.Count >= 1)
                {
                    nameTextBox.Text = dataTable.Rows[0][1].ToString();
                    typeDropDownList.Text = dataTable.Rows[0][2].ToString();
                    overviewTextBox.Text = dataTable.Rows[0][3].ToString();
                    cityTextBox.Text = dataTable.Rows[0][4].ToString();
                    addressTextBox.Text = dataTable.Rows[0][5].ToString();
                    websiteTextBox.Text = dataTable.Rows[0][6].ToString();
                    logoTextBox.Text = dataTable.Rows[0][7].ToString();
                    imageTextBox.Text = dataTable.Rows[0][8].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid University ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }

        // Add Button click event
        protected void addButton_Click(object sender, EventArgs e)
        {
            if (checkUniversityFromDatabase("Name"))
            {
                Response.Write("<script>alert('Username already taken!');</script>");
            }
            else
            {
                addNewUniversity();
                universityGridView.DataBind();
            }
        }

        // Update Button click event
        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (checkUniversityFromDatabase("ID"))
            {
                updateUniversity();
                universityGridView.DataBind();
            }
            else
            {
                Response.Write("<script>alert('University ID not found!');</script>");
            }
        }

        // Delete Button click event
        protected void deleteButton_Click(object sender, EventArgs e)
        {
            if (checkUniversityFromDatabase("ID"))
            {
                deleteUniversity();
                universityGridView.DataBind();
            }
            else
            {
                Response.Write("<script>alert('University ID not found!');</script>");
            }
        }

        // Check if the university is not already added
        bool checkUniversityFromDatabase(string byName)
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
                SqlCommand command;
                if (byName == "Name")
                {
                    command = new SqlCommand("SELECT * FROM tbl_Universities WHERE universityName='" + nameTextBox.Text.Trim() + "';", sqlConnection);
                }
                else
                {
                    command = new SqlCommand("SELECT * FROM tbl_Universities WHERE universityID='" + universityIDTextBox.Text.Trim() + "';", sqlConnection);
                }

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
        void addNewUniversity()
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
                SqlCommand command = new SqlCommand("INSERT INTO " +
                    "tbl_Universities(universityName, universityType, overview, city, fullAddress, websiteURL, logoURL, imageURL) VALUES " +
                    "(@universityName, @universityType, @overview, @city, @fullAddress, @websiteURL, @logoURL, @imageURL)", sqlConnection);

                command.Parameters.AddWithValue("@universityName", nameTextBox.Text.Trim());
                command.Parameters.AddWithValue("@universityType", typeDropDownList.SelectedValue.Trim());
                command.Parameters.AddWithValue("@overview", overviewTextBox.Text.Trim());
                command.Parameters.AddWithValue("@city", cityTextBox.Text.Trim());
                command.Parameters.AddWithValue("@fullAddress", addressTextBox.Text.Trim());
                command.Parameters.AddWithValue("@websiteURL", websiteTextBox.Text.Trim());
                command.Parameters.AddWithValue("@logoURL", logoTextBox.Text.Trim());
                command.Parameters.AddWithValue("@imageURL", imageTextBox.Text.Trim());

                command.ExecuteNonQuery();

                // Close Connection
                sqlConnection.Close();

                // Successful message (Todo) 
                Response.Write("<script>alert('University details added successfully');</script>");

                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }

        void updateUniversity()
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
                SqlCommand command = new SqlCommand("UPDATE tbl_Universities SET universityName=@universityName, " +
                    "universityType=@universityType, overview=@overview, city=@city, fullAddress=@fullAddress, websiteURL=@websiteURL, " +
                    "logoURL=@logoURL, imageURL=@imageURL WHERE universityID=@universityID", sqlConnection);

                command.Parameters.AddWithValue("@universityID", universityIDTextBox.Text.Trim());
                command.Parameters.AddWithValue("@universityName", nameTextBox.Text.Trim());
                command.Parameters.AddWithValue("@universityType", typeDropDownList.SelectedValue.Trim());
                command.Parameters.AddWithValue("@overview", overviewTextBox.Text.Trim());
                command.Parameters.AddWithValue("@city", cityTextBox.Text.Trim());
                command.Parameters.AddWithValue("@fullAddress", addressTextBox.Text.Trim());
                command.Parameters.AddWithValue("@websiteURL", websiteTextBox.Text.Trim());
                command.Parameters.AddWithValue("@logoURL", logoTextBox.Text.Trim());
                command.Parameters.AddWithValue("@imageURL", imageTextBox.Text.Trim());

                command.ExecuteNonQuery();

                // Close Connection
                sqlConnection.Close();

                // Successful message (Todo) 
                Response.Write("<script>alert('University details updated successfully');</script>");

                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }

        void deleteUniversity()
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
                SqlCommand command = new SqlCommand("DELETE FROM tbl_Universities WHERE universityID=@universityID", sqlConnection);

                command.Parameters.AddWithValue("@universityID", universityIDTextBox.Text.Trim());

                command.ExecuteNonQuery();

                // Close Connection
                sqlConnection.Close();

                // Successful message (Todo) 
                Response.Write("<script>alert('University details deleted successfully');</script>");

                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }

        void clearForm()
        {
            universityIDTextBox.Text = "";
            nameTextBox.Text = "";
        }
    }
}