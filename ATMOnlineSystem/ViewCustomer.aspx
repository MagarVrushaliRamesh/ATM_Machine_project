<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="ATMOnlineSystem.ViewCustomer" %>


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

        
      


        .auto-style7 {
            margin-left: 50px;
            margin-top: 16px;
        }
        .auto-style16 {
            margin-left: 488px;
            margin-top: 42px;
        }
              
        #Logout
        {
             margin-left: 450px;
        }

    
        .auto-style26 {
            width: 484px;
            margin-left: 413px;
            height: 132px;
            margin-top: 80px;
        }

    
        .auto-style27 {
            margin-left: 202px;
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
    </ul>
  </div>
</nav>  
        <div class="auto-style26" style="background-color: #00FFFF; font-size: 15px;">
         <%--<input type="button" value="View customer" onclick="Button3_Click" />  --%> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Enter The ID No:<asp:TextBox ID="Button3" runat="server" CssClass="auto-style7" Height="24px" OnClick="Button3_Click" Width="158px" ></asp:TextBox>
            <br />
        <br />

        <asp:Button ID="Button1" runat="server" Font-Bold="True"  Font-Size="Medium" Text="View customer" OnClick="Button4_Click" CssClass="auto-style27" Width="172px" Height="29px" />
      
            <br />
      
         </div>
       <%-- <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="View customer" OnClick="Button4_Click" />
          --%>
        <asp:GridView ID="GridView2" runat="server" CssClass="auto-style16" Width="220px"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

    </form>
   <%-- <a href="ViewCustomer.aspx">View Customer</a>
      <li><a href="AddAccDetails.aspx">Add A/c Details</a></li>
         <li><a href="CreditAccount.aspx" class="auto-style25">Credit A/c Details</a></li>
        <li><a href="Logout.aspx">Logout</a></li>--%>
</body>
</html>
