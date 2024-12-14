using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Service : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if user is logged in
        //if (Session["Username"] == null)
        //{
        //    Response.Redirect("Login.aspx"); // Redirect to login if session is empty
        //}

        // Database connection string
        string cs = "server=localhost;userid=root;password=;database=TechFix";
        string query = "SELECT * FROM Service";

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            try
            {
                con.Open(); // Open the connection
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Service");
                if (GridView1 != null)
                {
                    GridView1.DataSource = ds.Tables["Service"].DefaultView;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Log or handle exception
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                con.Close(); // Close the connection
            }
        }
    }
}
