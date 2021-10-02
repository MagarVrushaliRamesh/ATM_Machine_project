<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CashWithdrawal.aspx.cs" Inherits="ATMOnlineSystem.CashWithdrawal" %>

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

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            margin-left: 130px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style11 {
            margin-left: 556px;
            margin-top: 56px;
        }
        


        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            margin-left: 69px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 609px;
            margin-left: 395px;
        }
        .auto-style25 {
            left: 0px;
            top: 8px;
        }

       
        #Logout
        {
             margin-left: 500px;
        }


        .auto-style26 {
            width: 569px;
            margin-left: 479px;
        }


    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>



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
        <li><a href="Logout.aspx" id="Logout">Logout</a></li>
    </ul>
  </div>
</nav>
  </div>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style26" style="background-color: #00FFFF">
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>ATM Bank Withdrawal</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style4">Account  No:&nbsp; </span>&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" MaxLength="10"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <%--<tr>
                <td class="auto-style9"><span class="auto-style4">Current Balance:&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            --%>
            <tr>
                <td class="auto-style9"><span class="auto-style4">Enter Amount To Withdraw: &nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style8" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="WithDrawal" OnClick="Button1_Click" />
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
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style11"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </form>
</body>
</html>
