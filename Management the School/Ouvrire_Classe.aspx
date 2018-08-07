<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Ouvrire_Classe.aspx.vb" Inherits="Ouvrire_Classe" %>

<%@ Register Src="ConrtoleUseur.ascx" TagName="ConrtoleUseur" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000033">
    <form id="form1" runat="server">
    <center><div >
        <uc1:ConrtoleUseur ID="ConrtoleUseur1" runat="server" /></div></center>
        <br />
        <br />
        <br />
        <center ><table style="width: 683px; height: 208px">
            <tr>
                <td style="width: 131px; height: 45px;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bodoni MT Black"
                        Font-Size="Large" Font-Strikeout="False" Height="28px" Text="Nom Classe :" Width="152px" ForeColor="White"></asp:Label></td>
                <td style="width: 495px; height: 45px;" align="left" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Uniquement les caractéres AlphaNumérique" ValidationExpression="[A-Za-z0-9-.]{4,20}" Font-Size="Large"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 131px; height: 44px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bodoni MT Black"
                        Font-Size="Large" Font-Strikeout="False" Height="28px" Text="Nom Professeur :"
                        Width="176px" ForeColor="White"></asp:Label></td>
                <td style="width: 495px; height: 44px;" align="left" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Uniquement les caractéres Alphabétique" ValidationExpression="[A-Za-z.-]{4,255}" Font-Size="Large"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="height: 1px;" align="right" colspan="3">
                    &nbsp;<asp:Button ID="Button1" runat="server" Height="33px" Text="Valider" Width="176px" EnableTheming="True" /></td>
            </tr>
        </table>
        </center>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
       <asp:Label  ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#C00000" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
