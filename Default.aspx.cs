using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlTypes;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;

        MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

        conn.Open();

    }
}