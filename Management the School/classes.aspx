<%@ Page Language="VB" AutoEventWireup="false" CodeFile="classes.aspx.vb" Inherits="classes" %>

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
    
    </div>
     <p>
        <u><strong style="font-family: Aharoni, Sans-Serif">Gestion des classes au sein de l'établissement :</strong></u> 
    </p>
    <p>
            &nbsp;&nbsp;
          <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="184px" Width="871px" Caption="Liste de classes " CaptionAlign="Left" HorizontalAlign="Center" 
         OnUpdateCommand ="UpDate"
          OnEditCommand ="Edit"
          OnDeleteCommand ="Supp"
          OnCancelCommand="annu"
           AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="4" ShowFooter="True"  >
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <EditItemStyle BackColor="#999999" />
              <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" Mode="NumericPages" />
              <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
              <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
              <Columns>
                  <asp:TemplateColumn>
                      <ItemTemplate>
                          <asp:LinkButton runat="server" CausesValidation="false" CommandName="Edit" Text="Modifier"></asp:LinkButton>
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:LinkButton runat="server" CommandName="Update" Text="Mettre a joure"></asp:LinkButton>
                          <asp:LinkButton runat="server" CausesValidation="false" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                      </EditItemTemplate>
                  </asp:TemplateColumn>
                  <asp:ButtonColumn CommandName="Delete" Text="Supprimer"></asp:ButtonColumn>
                  <asp:BoundColumn HeaderText="ID Classe" ReadOnly="True" Visible="False" DataField="ID_ClAsse"></asp:BoundColumn>
                  <asp:BoundColumn DataField="Nom_Classe" HeaderText="Nom Classe"></asp:BoundColumn>
                  <asp:BoundColumn DataField="Professeur_Principale" HeaderText="Nom professeur"></asp:BoundColumn>
              </Columns>
            </asp:DataGrid></p>
        <p>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
        <a href="Ouvrire_classe.aspx">Ouvrir une nouvelle classe</a>&nbsp;
        </p>
    </form>
</body>
</html>
