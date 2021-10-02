<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomer1.aspx.cs" Inherits="ATMOnlineSystem.AddCustomer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>


    <script src="Scripts/jquery.validate.unobtrusive.min.js"></script>
    <script src="Scripts/jquery.validate.unobtrusive.js"></script>
    <script src="Scripts/jquery.validate.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <style type="text/css">

        
      


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            margin-left: 67px;
        }
        .auto-style7 {
            margin-left: 116px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 609px;
            margin-left: 395px;
        }
        .auto-style10 {
            margin-left: 118px;
        }
        .auto-style12 {
            margin-left: 88px;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style15 {
            margin-left: 55px;
        }
        .auto-style16 {
            margin-left: 461px;
            margin-top: 42px;
        }
        .auto-style18 {
            margin-left: 38px;
        }
        .auto-style22 {
            margin-left: 150px;
        }
        .auto-style24 {
            margin-left: 9px;
        }
        .auto-style25 {
            left: 0px;
            top: 8px;
        }

       
        #Logout
        {
             margin-left: 450px;
        }

    
        .auto-style26 {
            margin-left: 71px;
        }
        .auto-style27 {
            margin-left: 63px;
        }

    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <br />
        <br />

        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Admin.aspx">ATM System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="AddCustomer1.aspx">Add Customer</a></li>
      
      <li><a href="ViewCustomer.aspx">View Customer</a></li>
      <li><a href="AddAccDetails.aspx">Add A/c Details</a></li>
         <li><a href="CreditAccount.aspx" >Credit A/c Details</a></li>
        
        
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Transaction Details
        </a>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="BalanceEnq.aspx">Balance Enquiry</a>
          <a class="dropdown-item" href="CashWithdrawal.aspx">CashWithDrawal</a><br />
          <a class="dropdown-item" href="Pinchange.aspx">Pin Change</a><br />
            <a class="dropdown-item" href="Deposit.aspx">Deposit</a>
        </div>
      </li>


     
        <li><a href="Logout.aspx" id="Logout">Logout</a></li>

       </div>
    
  </div>
</nav>
            


        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div class="auto-style9" style="background-color: #00FFFF">
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Add Customer</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style26" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" Height="22px" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Email Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contact No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style24" MaxLength="10" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Size="Medium" Text="Account No:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style18" MaxLength="10" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">A/c Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style27" Height="22px" Width="225px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Saving</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Balance:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style15" Height="22px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><span class="auto-style13">UserName:<asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style10" Height="22px"></asp:TextBox>
                    </span>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Pin No:"></asp:Label>
                    <span class="auto-style13"><asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style22" MaxLength="4"  Height="22px"></asp:TextBox>
                    <br />
                    </span>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Submit" OnClick="Button2_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Reset" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style16"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </form>
</body>
</html>
