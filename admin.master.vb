
Partial Class admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "hoşgeldin" & " " & Session("ad") & " " & Session("soyad")
        If Session("yetki") = "1" Then
            HyperLink1.Visible = True
            HyperLink2.Visible = True
            HyperLink3.Visible = True
            HyperLink4.Visible = True
        ElseIf Session("yetki") = "0" Then
            HyperLink1.Visible = False
            HyperLink2.Visible = False
            HyperLink3.Visible = False
            HyperLink4.Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session.Abandon()
        Response.Redirect("giris.aspx")
    End Sub
End Class    


namespace User_Login_MVC {

using System;
using System.Collections.generic;
using System.ComponentModel.DataAnnotations;



public partial class User {

public int UserId {

get; set;
}

[Required(ErrorMessage= "Required.")]
[C]


}















}




