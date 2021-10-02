using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ATMOnlineSystem
{
    public partial class TransDetails : System.Web.UI.Page
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

        protected void btrpin_Click(object sender, EventArgs e)
        {
            Response.Redirect("PinChange.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btrcashwithdrwal_Click(object sender, EventArgs e)
        {
            Response.Redirect("CashWithdrawal.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deposit.aspx");
        }

        protected void btrbalanceEnq_Click(object sender, EventArgs e)
        {
            Response.Redirect("BalanceEnq.aspx");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("AddAccDetails.aspx");
        }

        protected void btrlogin_Click(object sender, EventArgs e)
        {
              
        }

        
    }
}