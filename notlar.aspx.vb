Imports System.Data
Imports System.Data.OleDb
Partial Class notlar
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            Dim adp As New OleDbDataAdapter("select sinif from ogrenciekle", baglanti)
            Dim dt As New DataTable
            adp.Fill(dt)
            For Each satir In dt.Rows
                DropDownList1.Items.Add(satir(0))
            Next
            Dim adp3 As New OleDbDataAdapter("select okulno from ogrenciekle where sinif='" & DropDownList1.SelectedValue & "'", baglanti)
            Dim dttt1 As New DataTable
            adp3.Fill(dttt1)
            For Each satir In dttt1.Rows
                DropDownList2.Items.Add(satir(0))
            Next
            Dim adp2 As New OleDbDataAdapter("select brans from ogretmenekle", baglanti)
            Dim dtt As New DataTable
            adp2.Fill(dtt)
            For Each ssatir In dtt.Rows
                DropDownList3.Items.Add(ssatir(0))
            Next
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        LinkButton1.Visible = True
        LinkButton2.Visible = True
        LinkButton3.Visible = True
        Label2.Visible = True
        TextBox1.Visible = True
        LinkButton4.Visible = True
        Dim adp4 As New OleDbDataAdapter("select adi,soyadi from ogrenciekle where okulno='" & DropDownList2.SelectedValue & "'", baglanti)
        Dim dt4 As New DataTable
        adp4.Fill(dt4)
        For Each satir In dt4.Rows
            ad.Text = satir(0)
            soyad.Text = satir(1)
        Next
        sinif.Text = DropDownList1.SelectedValue
        notu.Text = DropDownList2.SelectedValue
        ders.Text = DropDownList3.Text
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "insert into notlar(sinif,numara,ders,bir,iki,uc,sozlu,ortalama) values (@sinif,@numara,@ders,@bir,@iki,@uc,@sozlu,@ortalama)"
        cmd.Parameters.Add("@sinif", OleDbType.VarChar).Value = sinif.Text
        cmd.Parameters.Add("@numara", OleDbType.VarChar).Value = notu.Text
        cmd.Parameters.Add("@ders", OleDbType.VarChar).Value = ders.Text
        cmd.Parameters.Add("@bir", OleDbType.VarChar).Value = TextBox1.Text
        cmd.Parameters.Add("@iki", OleDbType.VarChar).Value = 0
        cmd.Parameters.Add("@uc", OleDbType.VarChar).Value = 0
        cmd.Parameters.Add("@sozlu", OleDbType.VarChar).Value = 0
        cmd.Parameters.Add("@ortalama", OleDbType.VarChar).Value = 0
        baglanti.Open()
        cmd.ExecuteNonQuery()
        Label6.Text = "1.Not Eklendi"
        baglanti.Close()




    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        baglanti.Open()

        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "update notlar set iki='" & TextBox2.Text & "' where ders='" & ders.Text & "' and numara='" & notu.Text & "'"
        cmd.ExecuteNonQuery()
        Label7.Text = "2.Not Eklendi"
        baglanti.Close()
    End Sub


    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        sinif.Text = Nothing
        ad.Text = Nothing
        soyad.Text = Nothing
        notu.Text = Nothing
        ders.Text = Nothing
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Label3.Visible = True
        TextBox2.Visible = True
        LinkButton5.Visible = True

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Label4.Visible = True
        TextBox3.Visible = True
        LinkButton6.Visible = True
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Label5.Visible = True
        TextBox4.Visible = True
        LinkButton7.Visible = True
    End Sub


    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        baglanti.Open()

        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "update notlar set uc='" & TextBox3.Text & "'  where ders='" & ders.Text & "' and numara='" & notu.Text & "'"
        cmd.ExecuteNonQuery()
        Label8.Text = "3.Not Eklendi"
        baglanti.Close()
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        baglanti.Open()

        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "update notlar set sozlu='" & TextBox4.Text & "' where ders='" & ders.Text & "' and numara='" & notu.Text & "'"
        cmd.ExecuteNonQuery()
        Label7.Text = "2.Not Eklendi"
        Label9.Text = "Sözlü Not Eklendi"
        baglanti.Close()
        Dim adptr As New OleDbDataAdapter("select bir,iki,uc,sozlu from notlar where ders='" & ders.Text & "' and numara='" & notu.Text & "'", baglanti)
        Dim dttt As New DataTable
        adptr.Fill(dttt)
        For Each satir2 In dttt.Rows
            Session("bir") = satir2(0)
            Session("iki") = satir2(1)
            Session("uc") = satir2(2)
            Session("sozlu") = satir2(3)

        Next
        Dim ort2 As Integer
        Dim ortalama As Integer
        ortalama = Session("bir") + Session("iki") + Session("uc") + Session("sozlu")
        ort2 = ortalama / 4
        Dim cmd8 As New OleDbCommand
        cmd8.CommandText = "update notlar set ortalama='" & ort2 & "' where ders='" & ders.Text & "' and numara='" & notu.Text & "'"
        cmd8.Connection = baglanti
        baglanti.Open()
        cmd8.ExecuteNonQuery()
        Label11.Text = Math.Round(ort2, 2)
        baglanti.Close()
    End Sub
End Class
