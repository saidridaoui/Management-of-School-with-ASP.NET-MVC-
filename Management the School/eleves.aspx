<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Eleves.aspx.vb" Inherits="eleves" %>

<%@ Register Src="ConrtoleUseur.ascx" TagName="ConrtoleUseur" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000033">
    <form id="form1" runat="server">
    <div>
        <uc1:ConrtoleUseur ID="ConrtoleUseur1" runat="server" />
        <br />
        <br />
        <center >
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Eleve bien Ajouter" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="False" Width="203px"></asp:Label></center>
        <br />
        <center ><table style="width: 689px; height: 173px">
            <tr>
                <td style="width: 21px" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Nom Eleve:" Width="115px" Font-Bold="True" ForeColor="White"></asp:Label></td>
                <td colspan="2" style="width: 56px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 21px" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Classe effectue :" Font-Bold="True" ForeColor="White" Width="133px"></asp:Label></td>
                <td colspan="2" style="width: 56px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="136px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 55px">
                    <asp:Button ID="Button1" runat="server" Height="29px" Text="Envoyer..." Width="128px" /></td>
            </tr>
        </table></center>
    
    </div>
    </form>
</body>
</html>
