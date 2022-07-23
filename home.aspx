<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="home.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

 
     <style type="text/css">
        .auto-s tyle2 {
            width: 425px;
        }
    </style>
    
    <style type ="text/css" >
        body{
            background-image :url(img.jpg);
            background-size :cover ;
            background-attachment :fixed ;
             
        }
        .content{
            background :inherit;
            width :55%;
            padding :40px;
            margin :100px auto;
            font-family :Calibri;
            height: 69px;
        }
        p{
            font-size :25px;
            color :black ;

        }
        </style>
    </head>
<body> 
   
       
    <form id="form1" runat="server">
    <div style="height: 529px; width: 1269px; margin-left: 160px;">      
         
    &nbsp;&nbsp;      
         
    &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Larger" Text=" WELCOME TO HOME RENTAL SYSTEM"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="OWNER" Width="155px" Height="32px" Font-Bold="True" Font-Size="Larger" />
        <asp:Button ID="Button3" runat="server" Text="CUSTOMER" Width="155px" Height="32px" Font-Bold="True" Font-Size="Larger" />
        <asp:Button ID="Button2" runat="server" Text="ADMIN" Width="155px" Font-Bold="True" Font-Size="Larger" Height="32px" />
         
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Larger" Height="32px" Text="REPORT" Width="155px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />
         
    </div>
    </form>

</body>
</html>
