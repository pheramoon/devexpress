<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DXWebApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body style="background-color:ghostwhite">
    <form id="form1" runat="server">
        <div style="padding: 10px; border-style: double; border-width: thin; margin: 10%;">
            <dx:ASPxLabel ID="lbl_CMS" runat="server" Text="Welcome to our shop" Font-Bold="True" Font-Size="Medium"></dx:ASPxLabel>
            <br />
            <br />
            <dx:ASPxLabel ID="lbl_Username" runat="server" Text="Username: ">
            </dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Username" runat="server" Width="250px">
            </dx:ASPxTextBox>
            <br />
            <dx:ASPxLabel ID="lbl_Password" runat="server" Text="Password: ">
            </dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Password" runat="server" Width="250px" Password="True">
            </dx:ASPxTextBox>
            <br />
            <dx:ASPxButton ID="btn_Login" runat="server" Text="Login" OnClick="btn_Login_Click" Width="90px"></dx:ASPxButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton" runat="server" PostBackUrl="~/Register.aspx">Create a New Account</asp:LinkButton>
        </div>
    </form>
</body>
</html>
