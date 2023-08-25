<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galeri.aspx.cs" Inherits="galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="galeri">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
        <img src='<%#Eval("fotoyolu") %>' width="150" height="190" />
    
</ItemTemplate>
   </asp:Repeater>

    
    

    

    




</div>

</asp:Content>

