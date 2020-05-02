<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="notlar.aspx.vb" Inherits="notlar" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style16
        {
            height: 13px;
            width: 146px;
        }
        .style11
        {
            width: 185px;
            height: 13px;
        }
        .style18
        {
            width: 146px;
        }
        .style15
        {
            width: 185px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="style10">
        </td>
        <td class="style16">
        </td>
        <td class="style11">
        </td>
        <td class="style10" colspan="6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style18">
            Sınıf :</td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            <asp:Label ID="Label2" runat="server" Text="Yazılı 1" Visible="False"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:LinkButton ID="LinkButton4" runat="server" Visible="False">Ekle</asp:LinkButton>
        </td>
        <td>
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style18">
            Öğrenci No :</td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            <asp:LinkButton ID="LinkButton1" runat="server" Visible="False">Yazlı 2</asp:LinkButton>
        </td>
        <td class="style4">
            <asp:Label ID="Label3" runat="server" Text="Yazılı 2" Visible="False"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:LinkButton ID="LinkButton5" runat="server" Visible="False">Ekle</asp:LinkButton>
        </td>
        <td>
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style18">
            Ders :</td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            <asp:LinkButton ID="LinkButton2" runat="server" Visible="False">Yazılı 3</asp:LinkButton>
        </td>
        <td class="style4">
            <asp:Label ID="Label4" runat="server" Text="Yazılı 3" Visible="False"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:LinkButton ID="LinkButton6" runat="server" Visible="False">Ekle</asp:LinkButton>
        </td>
        <td>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style15">
            <asp:Button ID="Button2" runat="server" Text="Seç" />
            &nbsp;
            <asp:LinkButton ID="LinkButton8" runat="server">Yenile</asp:LinkButton>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            <asp:LinkButton ID="LinkButton3" runat="server" Visible="False">Sözlü</asp:LinkButton>
        </td>
        <td class="style4">
            <asp:Label ID="Label5" runat="server" Text="Sozlu" Visible="False"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:LinkButton ID="LinkButton7" runat="server" Visible="False">Ekle</asp:LinkButton>
        </td>
        <td>
            <asp:Label ID="Label9" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            <asp:Label ID="Label10" runat="server" Text="Ortalama :"></asp:Label>
        </td>
        <td class="style7">
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            <asp:Label ID="ad" runat="server"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            <asp:Label ID="soyad" runat="server"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            <asp:Label ID="notu" runat="server"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            <asp:Label ID="sinif" runat="server"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17" colspan="2">
            <asp:Label ID="ders" runat="server"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

