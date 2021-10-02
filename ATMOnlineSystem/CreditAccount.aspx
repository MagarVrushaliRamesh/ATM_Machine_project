<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreditAccount.aspx.cs" Inherits="ATMOnlineSystem.CreditAccount" %>

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
            width: 34%;
            margin-left: 553px;
            height: 181px;
            margin-top: 98px;
        }

         #Logout
        {
             margin-left: 450px;
        }

        .auto-style2 {
            margin-left: 111px;
        }

        .auto-style3 {
            margin-left: 626px;
            margin-top: 49px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
         <li><a href="CreditAccount.aspx">Credit A/c Details</a></li>

        
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
    </ul>
  </div>
</nav>
        <div>
        <table class="auto-style1" style="background-color: #00FFFF">
            <tr>
                <td style="font-size: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AddAccountDeatils</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Account No:" Font-Bold="True" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Show Details" CssClass="auto-style2" OnClick="Button1_Click" />
                </td>
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

        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" Width="207px"></asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </form>
</body>
</html>
