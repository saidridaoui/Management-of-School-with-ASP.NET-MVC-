Imports System.Data
Imports System
Imports System.Data.OleDb
Partial Class eleves
    Inherits System.Web.UI.Page
    Dim Cn As New OleDbConnection
    Dim Cmd As New OleDbCommand
    Dim DataR As OleDbDataReader
    Dim Adap As OleDbDataReader
    Dim Dst As New DataSet
    Sub Connexion()
        Try
            Dim chemin As String = Me.MapPath("") & "\App_Data\Etablissement_Lambda.mdb"
            Cn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & chemin & "'"
            Cn.Open()
            Cmd.Connection = Cn
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ComboListe()
        End If
    End Sub
    Sub ComboListe()
        Connexion()

        Dim StrCmd = "SELECT ID_ClAsse , Nom_Classe FROM Classes"
        Cmd.CommandText = StrCmd
        Adap = Cmd.ExecuteReader
        DropDownList1.DataSource = Adap
        DropDownList1.DataValueField = "ID_ClAsse"
        DropDownList1.DataTextField = "Nom_Classe"
        DropDownList1.DataBind()
        Cn.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Connexion()
        Cmd.Parameters.Clear()
        Cmd.CommandText = "INSERT INTO Eleves (Nom_Eleve,ID_Classes) Values (@NomElv,@ClasseID)"
        Cmd.Parameters.AddWithValue("@NomElv", Me.TextBox1.Text)
        Cmd.Parameters.AddWithValue("@ClasseID", Me.DropDownList1.SelectedValue)
        Cmd.ExecuteNonQuery()
        Me.Label1.Text = "L'eleve " & TextBox1.Text & " a correctement été créée "
        Me.Label1.Visible = True
        Cn.Close()
    End Sub
End Class
