<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="AJ.ResetPassword" %>

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
                <p>Click here to <a href="Login.aspx">Login</a></p>
                <h1 class="">Forgot Password?</h1>
                <div class ="form-group">
                    <div class ="form-row">
                        <div class="col-md-12"> 
                             <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                             <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox"></asp:TextBox>   
                        </div>
                    </div>
                    <div class="form-row">                      
                         <div class="col-md-12"> 
                                <asp:Label ID="lblCPassword" runat="server" Text="Confirm Password:"> </asp:Label>                        
                                <asp:TextBox ID="txtCPassword" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                     </div>
                </div>               
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Submit" CssClass="btn" />
                </div>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </body>
</html>