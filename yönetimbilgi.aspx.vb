Imports System.Data
Imports System.Data.OleDb
Partial Class yönetimbilgi
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim kadi As String = TextBox1.Text
        Dim sifre As String = TextBox2.Text
        Dim adp As New OleDbDataAdapter("select * from kullanıcılar where kullaniciadi='" & kadi & "' and sifre='" & sifre & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i += 1
            Session("Kimlik") = satir(0)
            Session("kullaniciadi") = satir(1)
            Session("sifre") = satir(2)
            Session("yetki") = satir(3)
        Next
        If i = 0 Then
            Label1.Text = "kullanıcı adı ve şifre hatalı"
        End If
        If Session("yetki") = 1 Then
            Response.Redirect("mudur.aspx")
        ElseIf Session("yetki") = 0 Then
            Response.Redirect("notlar.aspx")
        End If

    End Sub
End Class
