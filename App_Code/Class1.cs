using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;//��ҳ����ؼ�������֧�������ϵķ������ؼ�

/// <summary>
/// Class1 ��ժҪ˵��
/// </summary>
public class Class1
{
    public Class1()
    {   
    }
    private SqlConnection getCn() {
        string cnstr = "server=LAPTOP-D6A7VHU8;database=StudentDB;uid=sa;pwd=sasasa;";
        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();
        return cn;
    }
    public DataTable GetTable(string sql) //����һ��select��ѯ�����
    {
        SqlConnection cn = getCn();
        SqlDataAdapter adp = new SqlDataAdapter(sql, cn);
        DataSet ds = new DataSet();
        adp.Fill(ds, "T1");
        cn.Close();
        return ds.Tables["T1"];
    }
    public void TableDisplay1(DataTable T)
    {
        System.Web.HttpContext.Current.Response.Write("dd");
        System.Web.HttpContext.Current.Response.Write("<table style = 'border:1px;width:90%'>");
        for (int i = 0; i < T.Rows.Count; i++)
        {    System.Web.HttpContext.Current.Response.Write("<tr>");
            for (int j = 0; j < T.Columns.Count; j++)
            {
                System.Web.HttpContext.Current.Response.Write("<td>");
                System.Web.HttpContext.Current.Response.Write(T.Rows[i][j].ToString());
                System.Web.HttpContext.Current.Response.Write("</td>");
            }
            System.Web.HttpContext.Current.Response.Write("</tr>");
        }
        System.Web.HttpContext.Current.Response.Write("</table>");
    }
    public void TableDisplay2(DataTable T, Table t1)
    {    //输出表头
        TableRow trhead = new TableRow();
        for ( int i=0;i<T.Columns.Count;i++)
        { TableCell tdhead = new TableCell();
          tdhead.Text =T.Columns[i].ColumnName.ToString();
            trhead.Cells.Add(tdhead);
        }

        t1.Rows.Add(trhead);
        for (int i = 0; i < T.Rows.Count; i++)
        {   TableRow tr = new TableRow();//实例行对象
            for (int j = 0; j < T.Columns.Count; j++)
            {   TableCell td = new TableCell();//实例列对象
                td.Text = T.Rows[i][j].ToString();
                tr.Cells.Add(td); 
            }
                t1.Rows.Add(tr);
        }
    }
    public void delete(string sql)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql,cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();

    }
    public void insertIntoTable(string sql)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();
    }
}