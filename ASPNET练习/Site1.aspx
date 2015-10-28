<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Site1.aspx.cs" Inherits="ASPNET练习.Site1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        ul 
        {
            width: 700px;
            margin: 0 auto;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            }
         li{ display: inline-block;
             padding: 20px 50px 20px 50px;
             border-right: 1px dotted gray;
             font-size: 24px;
             }
        li a{text-decoration: none;
            color: gray;}
            li a:hover{ color: red;}
           
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="rcs_type" 
            DataValueField="rcs_id" DisplayMode="LinkButton" 
            onclick="BulletedList1_Click">
        </asp:BulletedList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server"
            DataFile="~/db/mysite.mdb" 
            SelectCommand="SELECT [rcs_id], [rcs_type] FROM [rcs_type]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
