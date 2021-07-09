using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class calculator : System.Web.UI.Page
{
    Double result, percentage, amt;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "calculator.aspx" + "')", con);
        cmd1.ExecuteNonQuery();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

       
        percentage = Convert.ToDouble(per.Text.ToString());
        amt = Convert.ToDouble(amount.Text.ToString());
        result = (percentage / 100) * amt;

  

        Response.Write("<br>\n\nYour Amount:" + amt);
        Response.Write("<br>\n\nSGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nCGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nTotal "+percentage+"% GST Amount=" + result);
        Response.Write("<br>\n\nResult =" + (result+amt));

        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address

        SqlCommand cmd = new SqlCommand("insert into calculator values('" + ipAddress + "','" + DT +"','" + name.Text + "','" + email.Text + "','" + amt + "','" + percentage + "','" + result +  "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

       

    }
 }