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
    public partial class ViewCustomer : System.Web.UI.Page
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

        protected void Button3_Click(object sender, EventArgs e)
        {
     
           
            
           


        }

            protected void Button4_Click(object sender, EventArgs e)
        {

            //if (TextBox1.Text == 999999999 && Pin_No == 9999)
            //{

            //}
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            string s = "select *from AddCust1 where id=14";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();


        }

    }

}