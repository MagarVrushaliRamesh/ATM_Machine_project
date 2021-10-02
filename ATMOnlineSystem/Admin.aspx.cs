using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMOnlineSystem
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
         {
            

           SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ATMDatabase.mdf;Integrated Security=True;");
            
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ATMDatabase"].ConnectionString);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ATMDatabase.mdf;Integrated Security=True;");

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM ADMINTBL ", con);
            cmd.Parameters.AddWithValue("@Account_No", Label1.Text);
            cmd.Parameters.AddWithValue("@Pin_No", Label2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("TransDetails.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }












        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlCommand cmd = new SqlCommand();
        //    if (=="99999999")
        //    {

        //    }


        //    cmd = new SqlCommand("select Account_No, Pin_No from AdminTable1 where Account_No='" + TextBox1.Text + "' ");





        //    Response.Redirect("TransDetails.aspx");
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string conStr = ConfigurationManager.ConnectionStrings["ATMDatabase"].ConnectionString;
        //   // SqlConnection connn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ATMDatabase.mdf;Integrated Security=True;");

        //    string sql = "SELECT * FROM AdminTable1 where Account_No = @Account_No and Pin_No = @Pin_No";
        //    SqlParameter pUser = new SqlParameter("@Account_No", Label1.Text);
        //    SqlParameter pPass = new SqlParameter("@Pin_No", Label2.Text);
        //    using (SqlConnection con = new SqlConnection(conStr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand(sql, con))
        //        {
        //            cmd.Parameters.Add(pUser);
        //            cmd.Parameters.Add(pPass);

        //            con.Open();

        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                if (reader.Read())
        //                {
        //                    // Successfully signed in
        //                    // Also you can access your fields' value using:
        //                    //    1. its index (e.x. reader[0])
        //                    //    2. or its name: (e.x. reader["Username"])
        //                }
        //                else
        //                {
        //                    // Login failed
        //                }
        //            }
        //        }
        //    }




            //protected void Button1_Click(object sender, EventArgs e)
            //{
            //    string strcon = "Data Source=.;uid=sa;pwd=Password$2;database=master";
            //    SqlConnection con = new SqlConnection(strcon);
            //    SqlCommand com = new SqlCommand("CheckUser", con);
            //    com.CommandType = CommandType.StoredProcedure;
            //    SqlParameter p1 = new SqlParameter("username", Label1.Text);
            //    SqlParameter p2 = new SqlParameter("password", Label2.Text);
            //    com.Parameters.Add(p1);
            //    com.Parameters.Add(p2);
            //    con.Open();
            //    SqlDataReader rd = com.ExecuteReader();
            //    if (rd.HasRows)
            //    {
            //        rd.Read();
            //        Label1.Text = "Login successful.";
            //    }
            //    else
            //    {
            //        Label1.Text = "Invalid username or password.";
            //    }
            //}


        

    }
}