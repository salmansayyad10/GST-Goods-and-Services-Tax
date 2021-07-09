using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class app : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "app.aspx" + "')", con);
        cmd1.ExecuteNonQuery();

         
         string Name = Application["idx"].ToString();
         int x1 = Convert.ToInt32(Name);
       
         SqlCommand command = new SqlCommand("SELECT * FROM  pay WHERE id='" + x1 + "'", con);
   

        SqlDataReader reader = command.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {

                Label1.Text = reader.GetString(1);
                Label2.Text = reader.GetString(2);
                Label3.Text = reader.GetString(3);
                Label4.Text = reader.GetString(4);
                Label5.Text = reader.GetString(5);
                Label6.Text = reader.GetString(6);
                Label7.Text = reader.GetString(7);
                Label8.Text = reader.GetString(8);
                Label9.Text = reader.GetString(9);
                Label10.Text = reader.GetString(10);
                Label11.Text = reader.GetString(11);
                Label12.Text = reader.GetString(12);
                Label13.Text = reader.GetString(13);
                Label14.Text = reader.GetString(14);
                Label15.Text = reader.GetString(15);
                Label16.Text = reader.GetString(16);
                Label17.Text = reader.GetString(17);
                Label18.Text = reader.GetString(18);
                Label19.Text = reader.GetString(19);
                Label20.Text = reader.GetString(20);
                Label21.Text = reader.GetString(21);
                int x = reader.GetInt32(0);
                Label21.Text = x.ToString();

            }
        }
        reader.Close();
        



    }
} 
