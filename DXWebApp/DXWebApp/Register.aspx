<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DXWebApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
        <div style="padding: 10px; border-style: double; border-width: thin; margin: 10%;">
            <asp:LinkButton ID="LinkButton" runat="server" PostBackUrl="~/Login.aspx">Login Page</asp:LinkButton>
            <br />
            <br />
            <dx:ASPxLabel ID="lbl_Username" runat="server" Text="Username: "></dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Username" runat="server" Width="250px"></dx:ASPxTextBox>
            <dx:ASPxLabel ID="lbl_Password" runat="server" Text="Password: "></dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Password" runat="server" Width="250px" Password="True"></dx:ASPxTextBox>
            <dx:ASPxLabel ID="lbl_Mail" runat="server" Text="Email:"></dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Mail" runat="server" Width="250px"></dx:ASPxTextBox>
            <dx:ASPxLabel ID="lbl_Address" runat="server" Text="Address: "></dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Address" runat="server" Width="250px"></dx:ASPxTextBox>
            <dx:ASPxLabel ID="lbl_Tel" runat="server" Text="Phone Nmuber: "></dx:ASPxLabel>
            <dx:ASPxTextBox ID="txt_Tel" runat="server" Width="250px"></dx:ASPxTextBox>
            <br />
            <dx:ASPxButton ID="btn_Register" runat="server" Text="Register" Width="115px" OnClick="btn_Register_Click" style="height: 23px"></dx:ASPxButton>
            <br />
            <div style="color:green">
            <%
                if (Request["msg"]!=null)
                {
                    Response.Write(Request["msg"]);
                } 
            %>
            </div>
        </div>
    </form>
</body>
</html>
