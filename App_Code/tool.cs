using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// tool 的摘要说明
/// </summary>
public class tool
{

    public tool()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    //把查询的东西同步到下拉列表框
    public void FileList(String herf, String table, DropDownList dpl)
    {
        string sql = " select " + herf + " from" + table;
        DataTable t1 = new Class1().GetTable(sql);
        for (int i = 0; i < t1.Rows.Count; i++)
        {
            dpl.Items.Add(t1.Rows[i][0].ToString().Trim());
        }
        dpl.DataSource = t1;
        dpl.DataTextField = herf;
        dpl.DataValueField = herf;
        dpl.DataBind();
    }
    void MyInsert()
    {

    }
}