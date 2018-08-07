Imports System.Data
Imports System
Imports System.Data.OleDb
Imports System.Data.SqlClient

Partial Class Ouvrire_Classe
    Inherits System.Web.UI.Page
    Dim Cn As New OleDbConnection
    Dim Cmd As New OleDbCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim chemin As String = Me.MapPath("") & "\App_Data\Etablissement_Lambda.mdb"
        Try
            Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & chemin & "'"
            Cn.Open()
            Cmd.Connection = Cn
            Cmd.Parameters.Clear()
            Cmd.CommandText = "INSERT INTO Classes (Nom_Classe,Professeur_Principale) Values (@Nom,@Prof)"
            Cmd.Parameters.AddWithValue("@Nom", Me.TextBox1.Text)
            Cmd.Parameters.AddWithValue("@Prof", Me.TextBox2.Text)
            Cmd.ExecuteNonQuery()
            Me.Label3.Text = "La classe " & TextBox1.Text & " a correctement été créée "
            Me.Label3.Visible = True
            Cn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Me.Button1.PostBackUrl = "classes.aspx.vb"
    End Sub


End Class
