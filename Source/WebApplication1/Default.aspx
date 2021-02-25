<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE html>  
<html>  
<head >  
<title></title>  
    <style>
        .pholder
        {
            height:15%;
            width:50%;
            background-color:aquamarine;
            position:fixed;
            top:280px;
            left:280px;
            border-top-right-radius:50px;
            border-bottom-left-radius:50px;
        }
    </style>
</head>  
<body>  
    
     <div  class="pholder">
          <h3><asp:Label ID="LabelText1" runat="server" Text="Label" Style="padding-left:250px"></asp:Label></h3> 
          <asp:LinkButton runat="server" OnClick="Unnamed1_Click" Style="padding-left:300px;color:aquamarine">ne</asp:LinkButton>
     </div>              
    </body>
</html>
</asp:Content>
