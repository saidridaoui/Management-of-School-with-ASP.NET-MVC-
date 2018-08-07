<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ConrtoleUseur.ascx.vb" Inherits="ConrtoleUseur" %>
<table style="width: 916px; height: 204px; background-color: #003366;">
    <tr>
        <td colspan="4" rowspan="2" style="height: 56px" align="center">
            <span style="font-weight: bold; font-size: 20pt; color: white; font-family: 'Arabic Transparent', sans-serif, Arial;
                mso-bidi-font-size: 8.0pt; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: FR;
                mso-fareast-language: FR; mso-bidi-language: AR-SA"><marquee direction ="right" >
                    Laridak-Soft</marquee></span></td>
    </tr>
    <tr>
    </tr>
    <tr>
        <td align="center" style="height: 71px">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="MV Boli" BackColor="Goldenrod" Font-Size="Medium" ForeColor="Black" Height="26px" NavigateUrl="~/Default1.aspx" Width="212px">Accueil </asp:HyperLink></td>
        <td align="center" style="height: 71px">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="MV Boli" BackColor="Goldenrod" Font-Size="Medium" ForeColor="Black" Height="26px" NavigateUrl="~/classes.aspx" Width="211px">Gestion des classes</asp:HyperLink></td>
        <td align="center" style="height: 71px">
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="MV Boli" BackColor="Goldenrod" Font-Size="Medium" ForeColor="Black" Height="26px" NavigateUrl="~/ElevesListe.aspx" Width="212px">Gestion des élèves</asp:HyperLink></td>
        <td align="center" style="height: 71px">
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="MV Boli" BackColor="Goldenrod" Font-Size="Medium" ForeColor="Black" Height="26px" NavigateUrl="~/Default.aspx" Width="212px">Dossiers d'inscription</asp:HyperLink></td>
    </tr>
    <tr>
        <td align="right" style="height: 37px" bgcolor="#003366" colspan="4">
            &nbsp;<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em"
                ForeColor="White" PathSeparator=" : " SkipLinkText="Web.sitemap" Width="366px">
                <PathSeparatorStyle Font-Bold="True" Font-Size="Medium" ForeColor="#507CD1" />
                <CurrentNodeStyle ForeColor="LightSteelBlue" />
                <NodeStyle BackColor="Transparent" Font-Bold="True" ForeColor="CornflowerBlue" />
                <RootNodeStyle BackColor="Transparent" BorderColor="Transparent" Font-Bold="True"
                    ForeColor="#507CD1" />
            </asp:SiteMapPath>
        </td>
    </tr>
</table>
