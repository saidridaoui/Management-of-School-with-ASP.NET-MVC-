Imports System
Imports System.Data
Imports System.Data.OleDb

Partial Class Default2
    Inherits System.Web.UI.Page
    Dim Cn As New OleDbConnection
    Dim Cmd As New OleDbCommand
    Dim DataR As OleDbDataReader
    Dim Adap As OleDbDataReader
    Dim Dst As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ListeEleve()
        End If
    End Sub
    Sub ListeEleve()
        Try
            Connexion()
            Dim Adap As OleDbDataAdapter
            Dim Dst As New DataSet
            Cmd.CommandText = "SELECT * FROM [Eleves]"
            Adap = New OleDbDataAdapter(Cmd)
            Adap.Fill(Dst, "Eleves")
            DataGrid1.DataSource = Dst
            DataGrid1.DataBind()
            Cn.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
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
End Class
