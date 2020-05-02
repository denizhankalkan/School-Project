Imports System.Data
Imports System.Data.OleDb
Partial Class ogretmenekle
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            baglanti.Open()
            Dim cmd As New OleDbCommand
            cmd.CommandText = "insert into ogretmenekle(adi,soyadi,brans)values(@adi,@soyadi,@brans)"
            cmd.Connection = baglanti
            cmd.Parameters.Add("@adi", OleDbType.VarChar).Value = TextBox1.Text
            cmd.Parameters.Add("@soyadi", OleDbType.VarChar).Value = TextBox2.Text
            cmd.Parameters.Add("@brans", OleDbType.VarChar).Value = TextBox3.Text
            cmd.ExecuteNonQuery()
            Label2.Text = "Öğretmen eklendi"
            baglanti.Close()
        Catch ex As Exception
            Label2.Text = "Öğretmen eklenemedi"
        End Try
    End Sub
End Class
