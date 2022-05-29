<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacherinfo_select.aspx.cs" Inherits="Admin_Teacherinfo_select" %>

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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="教师号" DataSourceID="SqlDataSource1"  class="layui-table">
                <Columns>
                    <asp:BoundField DataField="教师号" HeaderText="教师号" ReadOnly="True" SortExpression="教师" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="所授课程" HeaderText="所授课程" SortExpression="所授课程" />
                    <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="删除" EditText="编辑" HeaderText="操作"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM 教师 WHERE 教师号 = @教师号" InsertCommand="INSERT INTO [教师] (教师号, 姓名, 性别，所授课程,密码) VALUES (@教师号, @姓名, @性别,@所授课程,密码)" SelectCommand="SELECT * FROM [教师]" UpdateCommand="UPDATE [教师] SET 姓名 = @姓名, 性别 = @性别 WHERE [教师号] = @教师号">
                <DeleteParameters>
                    <asp:Parameter Name="教师号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="教师号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="所授课程" Type="String" />
                    <asp:Parameter Name="密码" Type="String" />

                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="所授课程" Type="String" />
                    <asp:Parameter Name="密码" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
