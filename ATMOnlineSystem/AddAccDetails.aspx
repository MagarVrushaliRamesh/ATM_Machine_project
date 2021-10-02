<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccDetails.aspx.cs" Inherits="ATMOnlineSystem.AddAccDetails" %>

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
            margin-bottom: 15px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            margin-left: 90px;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            margin-left: 58px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            height: 23px;
            text-align: center;
        }
        .auto-style11 {
            width: 636px;
            margin-left: 372px;
            margin-top: 8px;
        }
        .auto-style12 {
            margin-left: 67px;
            margin-bottom: 0px;
        }
        .auto-style13 {
            text-align: center;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        }
        #Logout
        {
            margin-left:450px;
        }
        .auto-style15 {
            margin-left: 552px;
            margin-top: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
      <li><a href="AddAccdetails.aspx">Add A/c Details</a></li>
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div class="auto-style11" style="background-color: #00FFFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><strong>Add Account Details</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style5">&nbsp;Name:&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtname" runat="server" CssClass="auto-style3" Width="150px"></asp:TextBox>  
                   &nbsp;
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style5">A/c No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtaccno" runat="server" CssClass="auto-style7" Width="150px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><span class="auto-style5">Credit Fields:&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style12" Height="22px" Width="151px">
                    <asp:ListItem>Debit</asp:ListItem>
                    <asp:ListItem>Credit</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style5">Current Balance:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                    <asp:TextBox ID="txtcbalance" runat="server" CssClass="auto-style6" Width="150px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btrinsert" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert" OnClick="btrinsert_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>

        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style15"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
