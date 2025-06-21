using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This method is called when the page loads.
            // No specific logic needed here for the login process.
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Establish a connection to the SQL Server database.
            SqlConnection cnn;
            // The connection string includes the path to your database file.
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            cnn = new SqlConnection(connectionString);

            try
            {
                // Open the database connection.
                cnn.Open();

                // Define the SQL query to check if a user with the given username and password exists.
                // We are selecting the count of rows that match both criteria.
                string query = "SELECT COUNT(*) FROM [User] WHERE username = @username AND psw = @psw";

                // Create a SqlCommand object with the query and the connection.
                SqlCommand cmd = new SqlCommand(query, cnn);

                // Add parameters to the query to prevent SQL injection.
                // TextBox1 is assumed to contain the username.
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                // TextBox2 is assumed to contain the password.
                cmd.Parameters.AddWithValue("@psw", TextBox2.Text);

                // Execute the query and retrieve the result.
                // ExecuteScalar is used because we expect a single value (the count).
                int userCount = (int)cmd.ExecuteScalar();

                // Check if a user was found (userCount will be 1 if found, 0 otherwise).
                if (userCount > 0)
                {
                    // If a user is found, redirect to Webform1.aspx (successful login).
                    Response.Redirect("Webform1.aspx");
                }
                else
                {
                    // If no user is found, display an error message.
                    // You would typically have a Label control (e.g., Label1) on your ASP.NET page
                    // to display such messages to the user.
                    // For example: Label1.Text = "Invalid username or password.";
                    // For now, we'll use a client-side alert for demonstration, but a Label is better for production.
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid username or password.');", true);
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occur during the database operation.
                // Log the error or display a user-friendly message.
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
            finally
            {
                // Ensure the connection is closed, even if an error occurs.
                if (cnn.State == System.Data.ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }
    }
}
