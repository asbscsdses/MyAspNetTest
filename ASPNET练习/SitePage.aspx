<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SitePage.aspx.cs" Inherits="ASPNET练习.SitePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="ads_ddl" DataTextField="rcs_type" DataValueField="rcs_id" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:AccessDataSource ID="ads_ddl" runat="server" DataFile="~/db/mysite.mdb" 
            SelectCommand="SELECT [rcs_id], [rcs_type] FROM [rcs_type]">
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ads_gv">
            <Columns>
                <asp:BoundField DataField="type_id" HeaderText="type_id" 
                    SortExpression="type_id" />
                <asp:BoundField DataField="content" HeaderText="content" 
                    SortExpression="content" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="ads_gv" runat="server" DataFile="~/db/mysite.mdb" 
            SelectCommand="SELECT [type_id], [content] FROM [rcs_list] WHERE ([type_id] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="type_id" SessionField="CID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
