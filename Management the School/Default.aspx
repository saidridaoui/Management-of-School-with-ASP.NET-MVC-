<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Src="ConrtoleUseur.ascx" TagName="ConrtoleUseur" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color: #ffffff">
    <form id="form1" runat="server">
    <div style="background-color: #ffffff">
        <uc1:ConrtoleUseur ID="ConrtoleUseur1" runat="server" />
        <br />
        <table style="width: 930px; height: 580px; background-color: white;" id="TABLE1"  onclick="return TABLE1_onclick()">
            <tr>
                <td colspan="4" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: #cc6600; font-variant: normal">
                  <marquee style="width: 906px; font-weight: bolder; color: #ffffff; height: 28px;" direction ="right" >FORMULAIRE DINSCREPTION : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;</marquee>  
                </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    3chiffres ,3lettres</td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    Identifiant :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="Identifiant" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    &nbsp;<asp:RegularExpressionValidator ID="Ridentifiant" runat="server" ControlToValidate="Identifiant"
                        ErrorMessage="ex :123abc" ValidationExpression="\d{3}\w{3}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="Valldentifiant" runat="server" ControlToValidate="Identifiant"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    6 lettres</td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    Mot de passe : &nbsp;&nbsp;
                </td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="MP" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    <asp:RegularExpressionValidator ID="RiMP" runat="server" ControlToValidate="MP" ErrorMessage="Ex : abcdef"
                        ValidationExpression="\w{6}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="VallMp" runat="server" ControlToValidate="MP" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                </td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    Nom :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="Nom" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    <asp:RequiredFieldValidator ID="VallNom" runat="server" ControlToValidate="Nom" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                </td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    Prénom :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="Prénom" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    <asp:RequiredFieldValidator ID="Valldentifiant3" runat="server" ControlToValidate="Prénom"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    jj/mm/aaaa</td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    Date de naissance :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="DN" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="DN"
                        ErrorMessage="ex :15/02/1986" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="Valldentifiant4" runat="server" ControlToValidate="DN"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                </td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    E-Mail :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:TextBox ID="mel" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="mel"
                        ErrorMessage="ex : Laridak@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="Valldentifiant5" runat="server" ControlToValidate="mel"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal; height: 10px;">
                    Entre 1 et 20</td>
                <td style="width: 196px; font-weight: bold; color: black; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal; height: 10px;">
                    Nombre fétiche :</td>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal; height: 10px;">
                    <asp:TextBox ID="Nbr" runat="server"></asp:TextBox></td>
                <td align="right" style="font-weight: bold; width: 196px; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal; height: 10px;">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ex : 16" MaximumValue="20"
                        MinimumValue="1" ControlToValidate="Nbr"></asp:RangeValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="Valldentifiant6" runat="server" ControlToValidate="Nbr"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 196px; font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;">
                    <asp:Button ID="cmdValide" runat="server" Height="30px" Text="Valider" Width="136px" BackColor="Orange" Font-Bold="False" Font-Italic="False" Font-Names="Colonna MT" Font-Size="X-Large" ForeColor="White" />
                </td>
                <td style="font-weight: bold; color: white; font-style: normal; font-family: Tahoma, 'Times New Roman', 'Times New Roman Special G1', 'Times New Roman Special G2', 'Traditional Arabic', Sans-Serif; background-color: silver; font-variant: normal;" colspan="3">
                    <asp:Button ID="cmdannuler" runat="server" Height="30px" Text="Annuler" Width="136px" BackColor="Orange" Font-Bold="False" Font-Italic="False" Font-Names="Colonna MT" Font-Size="X-Large" ForeColor="White" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
