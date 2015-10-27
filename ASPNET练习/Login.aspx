<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPNET练习.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<meta http-equiv="refresh" content="3"/>--%>
    <title></title>
    <script type="text/javascript">
        function inputValid() {
            var input = document.getElementById("TextBox1");

            if (input.value === "") {
                alert("请输入名字");
                return false;
            } else {
                return true;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="登录" 
            OnClientClick="return inputValid()" onclick="Button1_Click"/>
    
    </div>
    </form>
</body>
</html>
