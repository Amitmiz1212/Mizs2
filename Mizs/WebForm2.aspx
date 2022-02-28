<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Mizs.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script type="text/javascript">
                function isValid() {
                    return (isName() && isName1() && isName2() && isPass() && isPass1() && IsPass2() && isAge());
            }
                function isName() {
                var fname = document.getElementById("fname").value;
                var x;
                for (x = 0; x < fname.length; x++) {
                    if (fname.charAt(x) == " ") {
                    alert("שם המשתמש צריך לכלול מילה אחת בלבד");
                return false;
                    }
                }

                return true;
            }
                function isName1() {
                var fname = document.getElementById("fname").value;
                var x;
                var v = false;
                for (x = 0; x < fname.length; x++) {
                    if (isNaN(fname.charAt(x)) == false) {
                    v = true;
                    }
                } if (v == false) {
                    alert("  שם המשתמש חייב לכלול מספרים ואותיות");
                return false;
                } return true;

            }
                function isName2() {
                var fname = document.getElementById("fname").value;
                var x;
                var v = false;
                for (x = 0; x < fname.length; x++) {
                    if (isNaN(fname.charAt(x)) == true) {
                    v = true;
                    }
                } if (v == false) {
                    alert("  שם המשתמש חייב לכלול מספרים ואותיות");
                return false;
                } return true;

            }

                function isPass() {
                var rname = document.getElementById("pwd").value;
                var x;
                if (rname.length < 5) {
                    alert("סיסמא חייבת לכלול לפחות 5 תווים");
                return false;
                }
                for (x = 0; x < rname.length; x++) {
                    if (rname.charAt(x) == " ") {
                    alert(" הסיסמא צריכה לכלול מילה אחת בלבד");
                return false;
                    }
                }

                return true;
            }
                function IsPass2() {
                var Pwd = document.getElementById("pwd").value;

                var stCase = Pwd.toLowerCase();
                if (Pwd == stCase) {
                    alert(" על הסיסמא לכלול מספרים, אותיות גדולות וקטנות");
                return false;
                }
                stCase = Pwd.toUpperCase();
                if (Pwd == stCase) {
                    alert(" על הסיסמא לכלול מספרים, אותיות גדולות וקטנות");
                return false;
                }
                return true;
            }
                function isPass1() {
                var pass = document.getElementById("pwd").value;
                var pass1 = document.getElementById("pwdConfirm").value;
                if (pass != pass1) {
                    alert("אימות סיסמא אינו תואם לסיסמא");
                return false;
                }
                return true;
            }
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" name="form1" method="post" dir="rtl" onsubmit="return isValid();">
    <center>
        <table border="1" dir="rtl">
   <tbody>
       <tr>
       <th class="auto-style9">שם</th>
       <td class="auto-style10"><input type="text" name="name" id="name">  </td>
  
  </tr>
            <tr>
    <th class="auto-style9"> שם משפחה</th>
    <td class="auto-style10"><input type="text" name="lname">  </td>
  
  </tr>
  <tr>
    <th class="auto-style9">שם משתמש</th>
 <td class="auto-style10"><input type="text" name="fname" id="fname">
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
    <th class="auto-style9"> אימות סיסמה</th>
    <td class="auto-style10"><input type="password" name="epwd" id="pwdConfirm">  </td>
  
  </tr>
            <tr>
    <th class="auto-style9">מגדר</th>
    <td class="auto-style10"><input type="radio" id="זכר" name="gender" value="זכר">
     <label for="זכר">זכר</label>
  <input type="radio" id="נקבה" name="gender" value="נקבה">
  <label for="נקבה">נקבה</label>
  <input type="radio" id="אחר" name="gender" value="אחר">
  <label for="אחר">אחר</label>
    
    </td>

  </tr>
       <tr>
    <th class="auto-style9">מה אתם יותר אוהבים</th>
    <td class="auto-style10"><select name="shp" id="shp">
    <option value="סושי">סושי</option>
    <option value="המבורגר">המבורגר</option>
    <option value="פיצה">פיצה</option>
</select></td>
     </tr>
<tr>
<td class="auto-style8">
           <input type="submit" value="הרשמו" name="send">
</td>

</tr></tbody></table>
            </center>
        </form>
</asp:Content>
