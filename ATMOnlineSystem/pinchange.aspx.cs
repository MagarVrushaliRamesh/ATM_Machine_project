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
    public partial class pinchange : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ATMDatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
          
            //cmd.ExecuteNonQuery();

            //TextBox1.Text = "";
           
            //TextBox3.Text = "TextBox3.Text ";
            //TextBox4.Text = "TextBox4.Text";
            //cmd.CommandText = "insert into PinChnageTable values('" + TextBox1.Text + "''" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.CommandText = "update PinChangeTable1 set New_password=@New_password ,Confirm_password=@Confirm_password where Account_No=@Account_No";
            cmd.Parameters.AddWithValue("@Account_No ", TextBox1.Text);
            cmd.Parameters.AddWithValue("@New_password ", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Confirm_password", TextBox4.Text);
            cmd.ExecuteNonQuery();
            Response.Write("Pin Change Successfully");
            con.Close();
            string s = "select * from PinChangeTable1";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


            //try
            //{
            //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ATMDatabase"].ConnectionString);
            //    SqlCommand cmd1 = new SqlCommand("Change_Pwd_sp", con);
            //    cmd1.CommandType = CommandType.StoredProcedure;
            //    cmd1.Parameters.AddWithValue("@Account No", TextBox1.Text.Trim());
            //    cmd1.Parameters.AddWithValue("@Old Password:", TextBox2.Text.Trim());
            //    cmd1.Parameters.AddWithValue("@New Password:", TextBox3.Text.Trim());

            //    cmd1.Parameters.Add("@Status", SqlDbType.Int);
            //    cmd1.Parameters["@Status"].Direction = ParameterDirection.Output;
            //    con.Open();
            //    cmd1.ExecuteNonQuery();
            //    cmd1.Dispose();
            //    con.Close();

            //    int retVal = Convert.ToInt32(cmd.Parameters["@Status"].Value);
            //    if (retVal == 1)
            //    {
            //        Label2.Text = "Password has been changed successfully";
            //    }
            //    else
            //    {
            //        Label3.Text = "Wrong old username/password. Please re-enter.";

            //    }
            //}
            //catch (Exception ex)
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! following error occured : " + ex.Message.ToString() + "');", true);

            //}
        }
    }
    }