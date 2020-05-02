<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="ogretmensil.aspx.vb" Inherits="ogretmensil" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\ders.accdb;Persist Security Info=True" 
    DeleteCommand="DELETE FROM [ogretmenekle] WHERE [id] = ?" 
    InsertCommand="INSERT INTO [ogretmenekle] ([id], [adi], [soyadi], [brans]) VALUES (?, ?, ?, ?)" 
    ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [ogretmenekle]" 
    UpdateCommand="UPDATE [ogretmenekle] SET [adi] = ?, [soyadi] = ?, [brans] = ? WHERE [id] = ?">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="brans" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="brans" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
        <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
            SortExpression="soyadi" />
        <asp:BoundField DataField="brans" HeaderText="brans" SortExpression="brans" />
    </Columns>
</asp:GridView>
</asp:Content>

