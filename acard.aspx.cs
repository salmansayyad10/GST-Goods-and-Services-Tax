using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class acard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE ano='" + t2.Text + "'", con);

        SqlDataReader reader = command.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                Label1.Text = "Aadhar Card Number Already Used";
            }

        }

        else
        {
            reader.Close();


            SqlCommand cmd = new SqlCommand("UPDATE registration SET ano='" + t2.Text + "'WHERE email='" + Session["user"] + "'AND password='" + t3.Text + "'", con);
            int k = cmd.ExecuteNonQuery();

            if (k == 0)
            {
                Label1.Text = "Invalid Password";

            }
            else
            {
                Application["idx"] = "Your Aadhar Card Number Has Changed Successfully";
                Response.Redirect("msg.aspx");
            }


        }
        con.Close();

    }
}
