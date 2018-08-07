<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ElevesListe.aspx.vb" Inherits="Default2" %>

<%@ Register Src="ConrtoleUseur.ascx" TagName="ConrtoleUseur" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:ConrtoleUseur ID="ConrtoleUseur1" runat="server" />
        &nbsp;<br />
        <br />
        <center><asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Width="723px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditItemStyle BackColor="#999999" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundColumn DataField="Nom_Eleve" HeaderText="Nom :"></asp:BoundColumn>
                <asp:BoundColumn DataField="ID_Eleve" HeaderText="Code Eleve :"></asp:BoundColumn>
                <asp:BoundColumn DataField="ID_Classes" HeaderText="ID Classe"></asp:BoundColumn>
            </Columns>
        </asp:DataGrid>&nbsp;</center>
        <center>
            &nbsp;</center>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
  
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/eleves.aspx" Width="126px" >Ajouter un eleves</asp:HyperLink>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
