Imports System.Data
Imports System.Data.OleDb
Partial Class ogrenciekle
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("provider=microsoft.ace.oledb.12.0;data source=" & Server.MapPath("app_data/ders.accdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        baglanti.Open()
        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "insert into ogrenciekle(adi,soyadi,sinif,tcno,okulno) values (@adi,@soyadi,@sinif,@tcno,@okulno)"
        cmd.Parameters.Add("@adi", OleDbType.VarChar).Value = TextBox1.Text
        cmd.Parameters.Add("@soyadi", OleDbType.VarChar).Value = TextBox2.Text
        cmd.Parameters.Add("@sinif", OleDbType.VarChar).Value = TextBox3.Text
        cmd.Parameters.Add("@tcno", OleDbType.VarChar).Value = TextBox4.Text
        cmd.Parameters.Add("@okulno", OleDbType.VarChar).Value = TextBox5.Text
        cmd.ExecuteNonQuery()
        Label1.Text = "Öğrenci Ekleme Başarılı"


        baglanti.Close()
    End Sub
End Class
