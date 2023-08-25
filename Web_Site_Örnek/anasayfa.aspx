<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="yanbilgi">
    <asp:Repeater ID="Rephayvanbilgi" runat="server">
        <ItemTemplate>
            
    <h1><%#Eval("hayvanhakkında") %></h1><ul>
        
<li><%#Eval("hayvanbilgi") %></li>
 
</ul>
 
        </ItemTemplate>
        </asp:Repeater>


</div>
</asp:Content>

