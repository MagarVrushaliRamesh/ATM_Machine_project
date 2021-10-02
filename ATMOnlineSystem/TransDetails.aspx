<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransDetails.aspx.cs" Inherits="ATMOnlineSystem.TransDetails" %>

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
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            margin-left: 17px;
        }
        .auto-style4 {
            margin-left: 10px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-left: 176px;
        }
        .auto-style7 {
            margin-left: 106px;
        }
        .auto-style8 {
            height: 16px;
        }
        .auto-style9 {
            height: 16px;
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style12 {
            text-align: center;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            font-size: medium;
        }
        .auto-style15 {
            width: 760px;
            margin-left: 336px;
            margin-top: 130px;
        }
         #Logout
        {
             margin-left: 450px;
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
        </div>
        <div class="auto-style15" style="background-color: #808080">
       <!-- <div>


            <br />
            <br />
            <br />
            <br />


        </div>!-->
        
        <p class="auto-style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong>&nbsp;ATM Online Banking System&nbsp; </strong></span>&nbsp;
        </p>
        <p class="auto-style10">
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
     <!--   <p class="auto-style10">
&nbsp; <span class="auto-style2"><strong>Welcome </strong>&nbsp; <strong>&nbsp;UserName:</strong><asp:TextBox ID="trtname" runat="server" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>A/c No.</strong><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" MaxLength="10"  ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btrlogin" runat="server" CssClass="auto-style14" Font-Bold="True" Text="LogOut" Width="71px" OnClick="btrlogin_Click" />
            </span>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>!-->
        <div style="background-color: #00FFFF">
        <table class="auto-style5">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="btrbalanceEnq" runat="server" Font-Bold="True" Font-Size="Medium" Text="Balance Enquiry" OnClick="btrbalanceEnq_Click" />
&nbsp;<asp:Button ID="btrcashwithdrwal" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" Text="Cash Withdrawl" OnClick="btrcashwithdrwal_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btrpin" runat="server" CssClass="auto-style11" Font-Bold="True" Font-Size="Large" OnClick="btrpin_Click" Text="Pin Change" Height="33px" />
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="Large" Text="Deposite" OnClick="Button5_Click" />
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
            </div>
    </form>
</body>
</html>
