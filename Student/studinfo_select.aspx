<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studinfo_select.aspx.cs" Inherits="Student_studinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学生号" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="学生号" HeaderText="学生号" ReadOnly="True" SortExpression="学生" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM 学生 WHERE 学生号 = @学生号" InsertCommand="INSERT INTO [学生] (学生号, 姓名, 性别) VALUES (@学生号, @姓名, @性别)" SelectCommand="SELECT * FROM [学生]" UpdateCommand="UPDATE [学生] SET 姓名 = @姓名, 性别 = @性别 WHERE [学生号] = @学生号">
                <DeleteParameters>
                    <asp:Parameter Name="学生号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学生号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />

                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
