using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMOnlineSystem
{
    public partial class Deposit : System.Web.UI.Page
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into DepositTable values( '" + TextBox1.Text + "','" + TextBox3.Text + "')";
            //cmd.ExecuteNonQuery();

           
            //TextBox1.Text = "";
        
            //TextBox3.Text = "";
            //Response.Write("Deposit Successfully");
            //string s = "select * from DepositTable";
            //SqlDataAdapter da = new SqlDataAdapter(s, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            //cmd.ExecuteNonQuery();

            //TextBox1.Text = "";

            //TextBox3.Text = "TextBox3.Text ";
            //TextBox4.Text = "TextBox4.Text";
            //cmd.CommandText = "insert into PinChnageTable values('" + TextBox1.Text + "''" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.CommandText = "update DEpositTable1 set Deposit=@Deposit where Account_No=@Account_No";
            cmd.Parameters.AddWithValue("@Account_No", txtaccno.Text);
            cmd.Parameters.AddWithValue("@deposit", txtcbalance.Text);
           
            cmd.ExecuteNonQuery();
            //Response.Write("Deposit Successfully");
            //con.Close();
            string AccNo = txtaccno.Text;
            string s = "select * from DEpositTable1 where Account_No=Account_No ";  //where Account_No=9999999999
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();




        }


    }
}