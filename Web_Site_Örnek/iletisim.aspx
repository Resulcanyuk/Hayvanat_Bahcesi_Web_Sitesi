<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>

<h1><img src="resimler/form.png" class="iletisimfoto">İLETİŞİM</h1>
<tr>
<td style="text-align: center" >Adınız Soyadınız:</td>
<td> 
<img src="resimler/user.png" class="adfoto">&nbsp;
    <asp:TextBox ID="txtisim" runat="server" BackColor="Gainsboro" 
        BorderStyle="Outset" Height="27px" Width="176px"></asp:TextBox></td>
<td> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtisim" ErrorMessage="Lütfen Boş Bırakmayın"></asp:RequiredFieldValidator>
    </td>
</tr>



<tr>
    <td style="text-align: center">Telefon Numaranız:</td>
    <td>
        <img src="resimler/forumtelefon.png" class="adfoto">&nbsp;
         <asp:TextBox ID="Textelefon" runat="server" BackColor="Gainsboro" 
        BorderStyle="Outset" Height="27px" Width="176px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Textelefon" ErrorMessage="Lütfen Boş Bırakmayın"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td style="text-align: center">E mail:</td>
    <td>
        <img src="resimler/formemail.png" class="adfoto">&nbsp;
        <asp:TextBox ID="Textmail" runat="server" BackColor="Gainsboro" 
        BorderStyle="Outset" Height="27px" Width="176px"></asp:TextBox>
    </td>
    <td>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Lütfen Geçerli Bir Gmail Adresi Giriniz" 
            ControlToValidate="Textmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Width="270px"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="Textmail" ErrorMessage="Lütfen Boş Bırakmayın"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
</tr>

<tr>
</br>
<td style="text-align: center">Parola</td>
<td>
 <img src="resimler/formemail.png" class="adfoto">&nbsp;
   
        <asp:TextBox ID="TextParola" runat="server" BackColor="Gainsboro" 
           BorderStyle="Outset" Height="27px" Width="176px" TextMode="Password"></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextParola" ErrorMessage="Lütfen Boş Bırakmayın."></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td style="text-align: center">Mesajınız</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Height="54px" TextMode="MultiLine" 
        Width="209px" BackColor="White" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
    </td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Lütfen Boş Bırakmayın"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Lblbilgi" runat="server"></asp:Label>
    </td>
<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="Gainsboro" 
        BorderStyle="Outset" Text="Kayıt Ol" OnClick="Button1_Click" />
    </td>
<td> &nbsp;</td>
</tr>

</table>
</asp:Content>

