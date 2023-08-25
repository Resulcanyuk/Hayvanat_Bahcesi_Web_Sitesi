<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Kimlik" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
            <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
            <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
            <asp:BoundField DataField="parola" HeaderText="parola" SortExpression="parola" />
            <asp:BoundField DataField="mesaj" HeaderText="mesaj" SortExpression="mesaj" />
            <asp:CheckBoxField DataField="yetki" HeaderText="yetki" SortExpression="yetki" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" ConflictDetection="CompareAllValues" DataFile="~/App_Data/veritabanı.mdb" DeleteCommand="DELETE FROM [uye] WHERE [Kimlik] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([tel] = ?) OR ([tel] IS NULL AND ? IS NULL)) AND (([mail] = ?) OR ([mail] IS NULL AND ? IS NULL)) AND (([parola] = ?) OR ([parola] IS NULL AND ? IS NULL)) AND (([mesaj] = ?) OR ([mesaj] IS NULL AND ? IS NULL)) AND [yetki] = ?" InsertCommand="INSERT INTO [uye] ([Kimlik], [ad], [tel], [mail], [parola], [mesaj], [yetki]) VALUES (?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [uye]" UpdateCommand="UPDATE [uye] SET [ad] = ?, [tel] = ?, [mail] = ?, [parola] = ?, [mesaj] = ?, [yetki] = ? WHERE [Kimlik] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([tel] = ?) OR ([tel] IS NULL AND ? IS NULL)) AND (([mail] = ?) OR ([mail] IS NULL AND ? IS NULL)) AND (([parola] = ?) OR ([parola] IS NULL AND ? IS NULL)) AND (([mesaj] = ?) OR ([mesaj] IS NULL AND ? IS NULL)) AND [yetki] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_Kimlik" Type="Int32" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_mail" Type="String" />
            <asp:Parameter Name="original_mail" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_mesaj" Type="String" />
            <asp:Parameter Name="original_mesaj" Type="String" />
            <asp:Parameter Name="original_yetki" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Kimlik" Type="Int32" />
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="mesaj" Type="String" />
            <asp:Parameter Name="yetki" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="mesaj" Type="String" />
            <asp:Parameter Name="yetki" Type="Boolean" />
            <asp:Parameter Name="original_Kimlik" Type="Int32" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_mail" Type="String" />
            <asp:Parameter Name="original_mail" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_mesaj" Type="String" />
            <asp:Parameter Name="original_mesaj" Type="String" />
            <asp:Parameter Name="original_yetki" Type="Boolean" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

