using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace ATMOnlineSystem
{
    public partial class CashWithdrawal : System.Web.UI.Page
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
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Current_balance from AddAccountDetails1 Where Account_No=11111111111";



            //Response.Write("CashWithDrawal successfully");
            //string s = "select Current_balance from AddAccountDetails1 Where Account_No=11111111111";
            //SqlDataAdapter da = new SqlDataAdapter(s, con);
            ////DataSet ds = new DataSet();
            ////da.Fill(ds);
            ///
            //string d = cmd.CommandText;
            int d = cmd.ExecuteNonQuery();

            int a=  Convert.ToInt32(d);
            if(a<= 1000)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert (' Cash Withdrwal successfully ');", true);
                Response.Redirect("CashWithdrawal.aspx");
            }
            else
            {
                Response.Write("insufficient Balance");
            }
            //SqlDataAdapter da = new SqlDataAdapter(s, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();


        }
    }
}