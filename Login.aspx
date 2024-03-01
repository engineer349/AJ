<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AJ.Login" %>

<!DOCTYPE html>
<html>
    <head runat="server">
        <title>Login Page</title>
        <link rel="stylesheet" href="~/Css/login.css" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="login-container">
                <img src="Images/zencare-logo.png" alt="Your Company Logo" class="logo" />
                <h1 class="">Login</h1>
                <div class ="form-group">
                    <div class ="form-row">
                         <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                         <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox"></asp:TextBox>                   
                     </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn" />
                </div>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </body>
</html>