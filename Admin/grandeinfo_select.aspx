<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grandeinfo_select.aspx.cs" Inherits="admin_grandeinfo_select" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="学生号" DataSourceID="SqlDataSource1" CssClass="layui-table" AllowPaging="True" AllowSorting="True">
                <Columns>
                   
                    <asp:BoundField DataField="课程号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程号" />
                    <asp:BoundField DataField="学生号" HeaderText="学生号" SortExpression="学生号" />
                    <asp:BoundField DataField="课程名称" HeaderText="所学课程" SortExpression="课程名称" />
                    <asp:BoundField DataField="成绩" HeaderText="成绩得分" SortExpression="成绩" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="删除" EditText="编辑" HeaderText="操作"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM 成绩表 WHERE 学生号 = @学生号" InsertCommand="INSERT INTO 成绩表 (学生号, [课程号], 课程名称, [成绩]) VALUES (@学生号, @课程号, @课程名称, @成绩)" SelectCommand="SELECT * FROM 成绩表" UpdateCommand="UPDATE 成绩表 SET [课程号] = @课程号, 课程名称 = @课程名称, [成绩] = @成绩 WHERE 学生号 = @学生号">
                <DeleteParameters>
                    <asp:Parameter Name="gradeid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="gradeid" Type="String" />
                    <asp:Parameter Name="课程号" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="成绩" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="课程号" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="成绩" Type="String" />
                    <asp:Parameter Name="gradeid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
