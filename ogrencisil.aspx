<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="ogrencisil.aspx.vb" Inherits="ogrencisil" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\ders.accdb;Persist Security Info=True" 
    DeleteCommand="DELETE FROM [ogrenciekle] WHERE [id] = ?" 
    InsertCommand="INSERT INTO [ogrenciekle] ([id], [adi], [soyadi], [sinif], [tcno], [okulno]) VALUES (?, ?, ?, ?, ?, ?)" 
    ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [ogrenciekle]" 
    UpdateCommand="UPDATE [ogrenciekle] SET [adi] = ?, [soyadi] = ?, [sinif] = ?, [tcno] = ?, [okulno] = ? WHERE [id] = ?">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="sinif" Type="String" />
        <asp:Parameter Name="tcno" Type="String" />
        <asp:Parameter Name="okulno" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="sinif" Type="String" />
        <asp:Parameter Name="tcno" Type="String" />
        <asp:Parameter Name="okulno" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
        <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
            SortExpression="soyadi" />
        <asp:BoundField DataField="sinif" HeaderText="sinif" SortExpression="sinif" />
        <asp:BoundField DataField="tcno" HeaderText="tcno" SortExpression="tcno" />
        <asp:BoundField DataField="okulno" HeaderText="okulno" 
            SortExpression="okulno" />
    </Columns>
</asp:GridView>
</asp:Content>

