using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {   String xb = "男";
        if (RadioButton2.Checked == true)  xb = "女";
        string sql = "select 学生号,姓名,出生日期,身高,'<a href=delexs.aspx?id='+学生号+'>删除</a>' as 删除 from 学生 where 性别='" + xb + "'";
        Class1 c1 = new Class1();
        DataTable T = c1.GetDateTable(sql);

        Table t1 = new Table();
    }
}