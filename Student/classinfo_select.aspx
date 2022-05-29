<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classinfo_select.aspx.cs" Inherits="Student_classinfo_select" %>

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

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="课程号" DataSourceID="SqlDataSource1" CSSClass="layui-table" >   
                <Columns >
                    <asp:BoundField DataField="课程号" HeaderText="课程号" ReadOnly="True" SortExpression="课程号">
                    </asp:BoundField>
                    <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                    <asp:BoundField DataField="任课教师" HeaderText="任课教师" SortExpression="任课教师" />
                    <asp:BoundField DataField="学生号" HeaderText="学生号" SortExpression="学生号" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="删除" EditText="编辑" HeaderText="操作" />
                </Columns>
                    
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM [学生选课信息表] WHERE [课程号] = @课程号" InsertCommand="INSERT INTO [学生选课信息表] ([课程号], [课程名称], [任课教师], [学生号]) VALUES (@课程号, @课程名称, @任课教师, @学生号)" SelectCommand="SELECT * FROM [学生选课信息表]" UpdateCommand="UPDATE [学生选课信息表] SET [课程名称] = @课程名称, [任课教师] = @任课教师, [学生号] = @学生号 WHERE [课程号] = @课程号">
                <DeleteParameters>
                    <asp:Parameter Name="课程号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="课程号" Type="String" />
                    <asp:Parameter Name="课程名称" Type="String" />
                    <asp:Parameter Name="任课教师" Type="String" />
                    <asp:Parameter Name="学生号" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="课程名称" Type="String" />
                    <asp:Parameter Name="任课教师" Type="String" />
                    <asp:Parameter Name="学生号" Type="String" />
                    <asp:Parameter Name="课程号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
  
        </div>
    </form>

</body>
</html>
