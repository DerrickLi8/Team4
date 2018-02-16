using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;

        SqlConnection conn = new SqlConnection(connString);
        try
        {
            conn.Open();
        }
        catch (Exception f)
        {
            Console.WriteLine(f.ToString());
        }
        conn.Close();

    }
}