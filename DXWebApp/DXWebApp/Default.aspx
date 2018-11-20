<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DXWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS</title>
</head>
<body style="background-color:snow">
    <form id="form1" runat="server">
        <div style="padding: 10px; border-style: double; border-width: thin; margin: 10px; height: 580px;">
            Welcome
            <dx:ASPxLabel ID="lbl_LoginStatus" runat="server" Text=" " Font-Bold="True">
            </dx:ASPxLabel>
            <dx:ASPxHyperLink ID="link_Logout" runat="server" NavigateUrl="~/Login.aspx" Text="Logout" Theme="Metropolis" />
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" Theme="Metropolis">
                            <Groups>
                                <dx:NavBarGroup Text="Dashboard">
                                </dx:NavBarGroup>
                                <dx:NavBarGroup Text="Customers">
                                </dx:NavBarGroup>
                                <dx:NavBarGroup Text="Products">
                                </dx:NavBarGroup>
                                <dx:NavBarGroup Text="Orders">
                                </dx:NavBarGroup>
                                <dx:NavBarGroup Text="Setting">
                                </dx:NavBarGroup>
                            </Groups>
                        </dx:ASPxNavBar>
                    </td>
                    <td class="auto-style1">
                        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" EnableTheming="True" Theme="Metropolis">
                            <TabPages>
                                <dx:TabPage Text="Details">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Text="Edit">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Text="Orders">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                            </TabPages>
                        </dx:ASPxPageControl>
                    </td>
                </tr>  
            </table>
        </div>
    </form>
</body>
</html>
