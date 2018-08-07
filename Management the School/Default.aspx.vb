Imports System
Imports System.Data
Imports System.Data.OleDb
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cnx As OleDbConnection
    Dim cmd As String
    Protected Sub cmdValide_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdValide.Click
        Dim chemin As String
        chemin = Me.MapPath("") + "\App_Data\inscrits.mdb"
        Dim chcnx = "provider=microsoft.jet.oledb.4.0  ; data source=" & chemin
        cnx = New OleDbConnection(chcnx)
        cnx.Open()
        cmd = "insert into Inscrit (identifiant,MP,Nom,Prenom, dn,mel,nb) values ('" & Me.Identifiant.Text & "','" & Me.MP.Text & "','" & Me.Nom.Text & "','" & Me.Prénom.Text & "','" & Me.DN.Text & "','" & Me.mel.Text & "','" & Me.Nbr.Text & "')"
        Dim obj As New OleDbDataAdapter(cmd, cnx)
        Dim data_memorie As New DataSet
        obj.Fill(data_memorie, "inscrit")
        cnx.Close()
    End Sub
End Class
