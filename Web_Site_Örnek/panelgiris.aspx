<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="panelgiris.aspx.cs" Inherits="panelgiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 >
        Panele Giriş</h1>
    <table style="width: 100%" >
        <tr>
            <td style="width: 120px">
                E-Posta</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 120px">
                Şifre</td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 120px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Giriş" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

