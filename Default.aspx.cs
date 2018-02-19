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
    MySql.Data.MySqlClient.MySqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {

        string connString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
        conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

        
    }

    protected void login_click(object sender, EventArgs e)
    {

        string staffID = LoginStaffID_textbox.Text;
        string password = LoginPassword_textbox.Text;

        MySql.Data.MySqlClient.MySqlCommand loginCommand1 = new MySql.Data.MySqlClient.MySqlCommand("SELECT StaffID, password FROM users WHERE StaffID = " + staffID + " AND password = " + password +";", conn);
        MySql.Data.MySqlClient.MySqlDataReader loginReader = null;

        conn.Open();

        loginReader = loginCommand1.ExecuteReader();

        if (loginReader.HasRows)
        {
            //login was successful
            Response.Redirect("Staff.aspx");
        }
        else
        {
            //login was unsuccessful

        }

        conn.Close();
    }


    protected void register_click(object sender, EventArgs e)
    {
        string staffID = RegisterStaffID_textbox.Text;
        string firstName = RegisterFirstName_textbox.Text;
        string lastName = RegisterLastName_textbox.Text;
        string password = RegisterPassword_textbox.Text;
        string position = RegisterPosition_DropDownList.Text;

        MySql.Data.MySqlClient.MySqlCommand registerCommand = new MySql.Data.MySqlClient.MySqlCommand("INSERT INTO users VALUES(" + staffID + ", " +  firstName + ", " + lastName + ", " + password + ", " + position + ");", conn);

        registerCommand.ExecuteNonQuery();

        conn.Open();


        if (registerCommand.ExecuteNonQuery()>0)
        {
            //register was successful
            Register_btn.Text = "register successful";

        }
        else
        {
            //register was unsuccessful

        }

        conn.Close();

    }




}