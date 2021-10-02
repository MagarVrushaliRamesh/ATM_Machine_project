<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="ATMOnlineSystem.Deposit" %>

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
            margin-left: 60px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 587px;
            margin-left: 422px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style9 {
            margin-left: 44px;
        }
        .auto-style10 {
            margin-left: 19px;
        }
        .auto-style12 {
            margin-left: 583px;
            margin-top: 50px;
        }
        #Logout
        {
              margin-left: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
          Dropdown link
        </a>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="BalanceEnq.aspx">Balance Enquiry</a>
          <a class="dropdown-item" href="CashWithdrawal.aspx">CashWithDrawal</a><br />
          <a class="dropdown-item" href="Pinchange.aspx">Pin Change</a><br />
            <a class="dropdown-item" href="Deposit.aspx">Deposit</a>
        </div>
      </li>
         <li><a href="Logout.aspx" id="Logout" >Logout</a></li>
    </ul>
  </div>
</nav>

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div class="auto-style6" style="background-color: #00FFFF">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7"><strong>&nbsp;Deposit</strong></span></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">Account No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtaccno" runat="server" CssClass="auto-style4" OnTextChanged="TextBox1_TextChanged" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
           <%-- <tr>
                <td class="auto-style3">Curent Balance:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>--%>
            <tr>
                <td class="auto-style3">Amount To Deposit:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcbalance" runat="server" CssClass="auto-style10"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Deposit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
            </div>
        <div class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style12" Width="202px"></asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </form>
</body>
</html>
