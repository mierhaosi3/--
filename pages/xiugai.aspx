<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugai.aspx.cs" Inherits="pages_admin_xiugai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">学生号</label>
        <div class="layui-input-block" style="width:200px;">
            <asp:TextBox ID="TextBox_stuid" runat="server" CssClass="layui-input" placeholder="请输入学生学生号"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuname" runat="server" CssClass="layui-input" placeholder="请输入学生姓名"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
      <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <asp:RadioButton ID="RadioButton_male" runat="server"  Checked="True" GroupName="gender" Text="男"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton_female" runat="server" GroupName="gender" Text="女" />
        </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">出生日期</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stusr" runat="server" CssClass="layui-input" placeholder="请输入学生出生日期"></asp:TextBox>
        </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">年级</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入学生年级"></asp:TextBox>
        </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">民族</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="layui-input" placeholder="请输入学生民族"></asp:TextBox>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">籍贯</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuclass" runat="server" CssClass="layui-input" placeholder="请输入学生籍贯"></asp:TextBox>
        </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">专业</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="layui-input" placeholder="请输入学生专业"></asp:TextBox>
        </div>
    </div>
        <div class="layui-form-item">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuphonenum" runat="server" CssClass="layui-input" placeholder="请输入学生联系电话"></asp:TextBox>
        </div>
     </div>
        
        <div class="layui-form-item">
    <div class="layui-input-block">
        <asp:Button ID="Button_submint" runat="server" Text="提交" CssClass="layui-btn"/>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
    </form>
            <script src="layui/layui.js" type="text/javascript"></script>
        <script type="text/javascript">
            //JavaScript代码区域
            layui.use('element', function () {
                var element = layui.element;
            });
        </script>
</body>
</html>
