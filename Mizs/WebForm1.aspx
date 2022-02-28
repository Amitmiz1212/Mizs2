<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Mizs.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <img border="0" src="https://st.depositphotos.com/2926881/3774/v/950/depositphotos_37748769-stock-illustration-pizza-chef-logo.jpg" width="600" height="500">

        <table border="1" dir="rtl">
   <tbody>
  <tr>
    <th class="auto-style9">שם משתמש</th>
 <td class="auto-style10"><input type="text" name="uname" id="uname">
</td>
     </tr>

                 <tr>
    <th class="auto-style9">אימייל</th>
    <td class="auto-style10"><input type="text" name="email" id="email">  </td>
     </tr>
    
<tr>
    <th class="auto-style9">סיסמה</th>
    <td class="auto-style10"><input type="password" name="pwd" id="pwd">  </td>
     </tr>
<tr>
<td class="auto-style8">
           <input type="submit" value="כניסה" name="send">
</td>

</tr></tbody></table>
            </center>
</asp:Content>
