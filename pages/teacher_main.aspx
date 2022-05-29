<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_main.aspx.cs" Inherits="pages_teacher_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="layui/css/layui.css" rel="stylesheet" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">管理系统后台--教师</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">课程信息管理</a>
          <dl class="layui-nav-child">
          <!--  <dd><a href="../Admin/classinfo_add.aspx"  target="MainWin">添加班级信息</a></dd> -->
            <dd><a href="../Teacher/classinfo_select.aspx"  target="MainWin">查询课程信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">学生信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="../Teacher/stuinfo_select.aspx"  target="MainWin">查询学生信息</a></dd>
          </dl>
        </li>
          <li class="layui-nav-item">
          <a href="javascript:;">成绩信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="../Teacher/grandeinfo.aspx"  target="MainWin" >查询成绩信息</a></dd>
          </dl>
        </li>
 
      </ul>
    </div>
  </div>
  
    <div class="layui-body">
    <!-- 内容主体区域 -->
       <iframe id="frame1" src="../Teacher/stuinfo_select.aspx" name="MainWin" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
  </div>
  
</div>
    <script src="layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>
