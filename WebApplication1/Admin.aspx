<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  
    <title></title>
    <style>
        .table{
            width: 30%;
           max-width: 100%;
           margin-bottom: 20px;
           margin-left: 480px;
        }
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
            margin-left:640px;
        }
        
        .collapse{
            margin-top:12px;
            margin-left:630px;
            font-size:x-large;
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
        .ftr{
            margin-left:640px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg ">
 
            <div class="collapse navbar-collapse" id="navbarNav">
                <asp:Label ID="headerlabel" runat="server" Text="Welcome"></asp:Label>
                
            </div>
        </nav>
        <asp:Button ID="ButtonLogout" runat="server" Text="Logout" Style="background-color: lightslategray; color: red;margin-left:1200px" OnClick="ButtonLogout_Click" />
        <h1 style="color:red;text-align:center">Admin Control Page</h1>
        
        <div style="align-content:center;margin-top:100px">
            
             <table class="table table-bordered border-primary" style="border:1px solid;">
                  <tbody>
                    <tr>                     
                      <td>Text 1</td>
                      <td><asp:TextBox ID="TextBoxText1" Class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox> </td>                 
                    </tr>
                    <tr> 
                      <td>Text 2</td>
                      <td><asp:TextBox ID="TextBoxText2" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>  
                    <tr>                     
                      <td>Header</td>
                       <td><asp:TextBox ID="TextBoxHeader" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>                  
                    </tr>
                    <tr>                     
                      <td>Footer</td>
                       <td><asp:TextBox ID="TextBoxFoot" class="form-control" runat="server"></asp:TextBox></td>                    
                    </tr>
                  </tbody>
                </table>
            <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10" style="margin-left:auto;margin-right:auto">
              <asp:Button ID="ButtonSave" Class="btn btn-success" runat="server" Text="Save" OnClick="ButtonSave_Click"></asp:Button>
            </div>
          </div>
        </div>
    </form>
    <div class="container body-content">
            
            <hr />
            <footer class="ft">
                <p class="ftr">&copy; <%: DateTime.Now.Year %> - <asp:Label runat="server" ID="FooterLabel" Text="KTS Infotech"></asp:Label></p>
                
            </footer>
        </div>
</body>
</html>
