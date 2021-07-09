using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class ureg : System.Web.UI.Page
{
    int flag = 0, em = 0, ad = 0, pn = 0;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == "Iamadmin")
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            con.Open();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (flag == 0)
        {

            SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE id='" + val.Text + "'", con);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (value.Text == reader.GetString(7))
                    {
                        Label1.Text = reader.GetString(7) + "=Email ID Already Used";
                        em = 1;
                    }
                    if (value.Text == reader.GetString(10))
                    {

                        Label2.Text = reader.GetString(10) + "=Aadhar Number Already Used";
                        ad = 1;
                    }
                    if (value.Text == reader.GetString(11))
                    {
                        pn = 1;
                        Label3.Text = reader.GetString(11) + "=PAN Card Number Already Used";
                    }
                }
            }
            reader.Close();
        }



        if (em == 0 && ad == 0 && pn == 0)
        {
            SqlCommand cmd = new SqlCommand("UPDATE registration SET " + cal.Text + "='" + value.Text + "'WHERE id= '" + val.Text + "'", con);
            int k = cmd.ExecuteNonQuery();
            if (k == 1)
            {
                Response.Write("Updated");
            }
            else
            {
                Response.Write("Invalid ID");
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from registration where id='" + val1.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Deleted");
        }
        else
        {
            Response.Write("Invalid ID");
        }
    }
}