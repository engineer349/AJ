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
                <h1 class="">Signin</h1>
                <p>Don't have an account? <a href="Signup.aspx" style="color:deepskyblue">Sign Up</a></p>
                <div class ="form-group">
                    <div class ="form-row">
                        <div class="col-md-12"> 
                             <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                             <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox"></asp:TextBox>     
                         </div>
                     </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12"> 
                            <asp:Label ID="lblPassword" runat="server" Text="Password:"> </asp:Label>                        
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
                      </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="form-row" style="text-align:right">                     
                                <a href="ForgotPassword.aspx" style="color:deepskyblue; text-align:right">Forgot Password?</a>                       
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