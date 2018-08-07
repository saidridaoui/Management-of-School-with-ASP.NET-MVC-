Imports System.Data
Imports System
Imports System.Data.OleDb
Partial Class classes
    Inherits System.Web.UI.Page
    Dim Cn As New OleDbConnection
    Dim Cmd As New OleDbCommand
    Dim DataR As OleDbDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ListeClasse()
        End If
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

    Sub Edit(ByVal Sender As Object, ByVal e As DataGridCommandEventArgs)
        DataGrid1.EditItemIndex = e.Item.ItemIndex
        ListeClasse()
    End Sub

    Sub UpDate(ByVal Sender As Object, ByVal e As DataGridCommandEventArgs)
        Dim NomCl, NomProf As String
        Dim ID As Integer
        Connexion()
        ID = e.Item.Cells(2).Text
        NomCl = Request.Form.Item(3).ToString
        NomProf = Request.Form.Item(4).ToString
        Dim CmdStr = "UPDATE [Classes] SET [Nom_Classe]='" & NomCl & "', [Professeur_Principale]='" & NomProf & "' WHERE ID_ClAsse=" & ID
        Cmd.CommandText = CmdStr
        Cmd.ExecuteNonQuery()
        DataGrid1.EditItemIndex = -1
        ListeClasse()
        Cn.Close()
    End Sub

    Sub ListeClasse()
        Try
            Connexion()
            Dim Adap As OleDbDataAdapter
            Dim Dst As New DataSet
            Cmd.CommandText = "SELECT * FROM [Classes]"
            Adap = New OleDbDataAdapter(Cmd)
            Adap.Fill(Dst, "Classes")
            DataGrid1.DataSource = Dst
            DataGrid1.DataBind()
            Cn.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
    Sub Supp(ByVal Sender As Object, ByVal e As DataGridCommandEventArgs)
        Dim ID As Integer
        Connexion()
        ID = e.Item.Cells(2).Text
        Cmd.CommandText = "DELETE * FROM [Classes] WHERE ID_ClAsse = " & ID
        Cmd.ExecuteNonQuery()
        DataGrid1.EditItemIndex = -1
        ListeClasse()
        Cn.Close()
    End Sub
    Sub annu(ByVal Sender As Object, ByVal e As DataGridCommandEventArgs)
        DataGrid1.EditItemIndex = -1
        ListeClasse()
    End Sub

    Protected Sub DataGrid1_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles DataGrid1.PageIndexChanged
        DataGrid1.CurrentPageIndex = e.NewPageIndex
        ListeClasse()
    End Sub

End Class
