﻿using System;
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
            Response.Redirect("Staff.asp");
        }
        else
        {
            //login was unsuccessful

        }

        conn.Close();
    }



}