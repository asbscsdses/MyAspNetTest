<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="ASPNET练习.Logon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<meta http-equiv="refresh" content="3"/>--%>
    <title></title>
    <style type="text/css">
        .panelCss {
            border: 1px solid #dedede;
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <iframe src="LogonContent.aspx" width="500px" height="300px"></iframe>
        <asp:Panel ID="Panel2" runat="server" Width="500px" CssClass="panelCss">
            <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server"  Text="发送" onclick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="退出" 
                Width="40px" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
