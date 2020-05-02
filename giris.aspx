<%@ Page Language="VB" AutoEventWireup="false" CodeFile="giris.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TTO-DANISMANLIK</title>
<style type="text/css">
<!--
body {
	background-image: url(resim/arka.png);
}
    .style2
    {
        height: 32px;
    }
    .style4
    {
        height: 2px;
    }
    .style7
    {
        height: 14px;
    }
    .style8
    {
        height: 24px;
    }
    .style9
    {
        height: 15px;
    }
    .style10
    {
        height: 12px;
    }
-->
</style></head>

<body bgcolor="#ffffff">
    <form id="form1" runat="server">
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="742" height="175" border="0">
  <tr>
    <td width="313" height="169">&nbsp;</td>
    <td background="resim/giris.png">
        <table border="0" 
            style="width: 256px; height: 195px">
      <tr>
        <td width="12" class="style8"></td>
        <td width="215" class="style8">T.C Kimlik No:</td>
      </tr>
      <tr>
        <td colspan="2" class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#FBFBFB" 
                BorderStyle="None" Width="192px"></asp:TextBox>
          </td>
        </tr>
      <tr>
        <td class="style10"></td>
        <td class="style10">Uzman No</td>
      </tr>
      <tr>
        <td colspan="2" class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#FBFBFB" 
                BorderStyle="None" Width="204px"></asp:TextBox>
            &nbsp;</td>
        </tr>
      <tr>
        <td colspan="2" class="style2">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/yönetimbilgi.aspx">Yönetim Bilgi Sistemi</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="giriş" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
          </td>
      </tr>
      
      <tr>
        <td colspan="2" class="style4"></td>
      </tr>
      
    </table></td>
    <td width="142">&nbsp;</td>
  </tr>
</table>
    </form>
</body>
</html>
