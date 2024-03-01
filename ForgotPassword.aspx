<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="AJ.ForgotPassword" %>

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
                <h1 class="">Forgot Password?</h1>
                <p>Click Here</p>
                <div class="form-group">
                    <div class="form-row">
                        <asp:Label ID="lblEmail" runat="server" Text=" Username/ Email:"> </asp:Label>                        
                        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="textbox"></asp:TextBox>
                    </div>
                    
                </div>               
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Reset Password"  CssClass="btn" />
                </div>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </body>
</html>