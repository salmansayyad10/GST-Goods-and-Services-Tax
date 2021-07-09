using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class cal : System.Web.UI.Page
{
    Double result, percentage, amt;
    String r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        Response.Write(Session["user"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

       // Label14.Text = name.Text;
        
        percentage = Convert.ToDouble(per.Text.ToString());
        amt = Convert.ToDouble(amount.Text.ToString());
        result = (percentage / 100) * amt;

        Response.Write("<br>\n\n" + name.Text);
        Response.Write("<br>\n\nYour Amount:" + amt);
        Response.Write("<br>\n\nSGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nCGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nTotal "+percentage+"% GST Amount=" + result);

/*

        Label15.Text = percentage.Text;
        Label16.Text = amount.Text;*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        
        String status= "Waiting";


        SqlCommand command = new SqlCommand("SELECT * FROM  registration WHERE email='" + Session["user"] + "'", con);
        
        SqlDataReader reader = command.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {

                r1 = reader.GetString(3);
                r2 = reader.GetString(4);
                r3 = reader.GetString(5);
                r4 = reader.GetString(6);
                r5 = reader.GetString(7);
                r6 = reader.GetString(8);
                r7 = reader.GetString(9);
                r8 = reader.GetString(10);
                r9 = reader.GetString(11);
                r10 = reader.GetString(12);
                r11 = reader.GetString(13);
                r12 = reader.GetString(14);
                r13 = reader.GetString(15);
                r14 = reader.GetString(16);
                
            }
        }
       reader.Close();


        percentage = Convert.ToDouble(per.Text.ToString());
        amt = Convert.ToDouble(amount.Text.ToString());
        result = (percentage / 100) * amt;

        Response.Write("<br>\n\n" + name.Text);
        Response.Write("<br>\n\nYour Amount:" + amt);
        Response.Write("<br>\n\nSGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nCGST:" + percentage / 2 + "%=" + result / 2);
        Response.Write("<br>\n\nTotal " + percentage + "% GST Amount=" + result);

        SqlCommand cmd = new SqlCommand("insert into pay values('" + DT + "','" + ipAddress + "','" + r1 + "','" + r2 + "','" + r3 + "','" + r4 + "','" + r5 + "','" + r6 + "','" + r7 + "','" + r8 + "','" + r9 + "','" + r10 + "','" + r11 + "','" + r12 + "','" + r13 + "','" + r14 + "','" + name.Text + "','" + amt + "','" + percentage + "','" + result + "','" + status + "')", con);
          cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("payment.aspx");
    }
}