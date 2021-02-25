<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>       
        table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              text-align:center;
             
        }
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          
        }
        tr:nth-child(even) {
          background-color: #dddddd;
        }
        .btn{
            margin-top:inherit;
            margin-left:650px;
        }
        .bg-light{
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
        }
        .navbar-nav{
            padding-top:12px;
            padding-left:650px;
        }
        .ft{
            background-color:lightsteelblue;
            position:fixed;
            left:0px;
            bottom:0px;
            width:100%;
        }
        .navbar{
            background-color:lightsteelblue;
        }
        .collapse{
            margin-top:10px;
            margin-left:630px;
            font-size:x-large;
           
        }
        .ftr{
            margin-left:640px;
        }
        #LabelMessage{
            margin-left:490px;
        }
    </style>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>   
   <!-- navbar -->
   <nav class="navbar navbar-expand-lg ">
 
          <div class="collapse navbar-collapse" id="navbarNav">
             <ul class="nav navbar-nav">
                <li><a runat="server" href="~/">Home</a></li>
             </ul>
             <asp:Label ID="headerlabel" runat="server" Text="Header"></asp:Label>             
          </div>
   </nav>
   <!-- navbar -->
   <h1 style="color:red;text-align:center">Login Page</h1><br /><br /><br /><br />
    
    <form runat="server">
      <table class="table table-bordered border-primary" style="border:1px solid;width:40%;margin-left:400px">
          <tr>
              <td>
                  <label for="exampleInputEmail1">UserName :</label>
              </td>
              <td>
                  <asp:TextBox ID="TextBoxUsername" class="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>
                  <label for="exampleInputPassword1">Password :</label>
              </td>
              <td>
                  <asp:TextBox ID="TextBoxPass" class="form-control"  placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
              </td>
          </tr>
        </table>
      <asp:Button ID="Buttonsubmit" class="btn btn-primary" runat="server" Text="Submit" OnClick="Buttonsubmit_Click" /><br />
      <asp:Label ID="LabelMessage" runat="server"  Font-Size="Large" ForeColor="Red"></asp:Label>
   </form>
    
   <div class="container body-content">
            <hr />
            <footer class="ft">
                <p class="ftr">&copy; <%: DateTime.Now.Year %> - <asp:Label runat="server" ID="FooterLabel" Text="KTS Infotech"></asp:Label></p>
               
            </footer>
    </div>
</body>
</html>
