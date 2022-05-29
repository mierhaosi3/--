using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Configuration;
using System.Text.RegularExpressions;
/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{

    public Class1()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    private SqlConnection getCn()
    {
        string cdstr = "server=LAPTOP-C8G9MQ73; database=no5; uid=sa;pwd=12345678;";
        SqlConnection connection = new SqlConnection(cdstr);
        connection.Open();
        return connection;
    }
    public int getnum(string sql)
    {
        Boolean flag = false;
        return 0;
    }
    public void insertIntoTable(string sql)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();
    }
    //查询返回一个表格
    public DataTable GetDateTable(string sql)//返回一个查询结果
    {
        SqlConnection connection = getCn();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
        DataSet dataSet = new DataSet();//dataset表的集合
        adapter.Fill(dataSet, "T2");
        connection.Close();
        return dataSet.Tables["T2"];
    }
    public void TableDislplay(DataTable T)
    {
        //  Response.Write("<table style='border:1px;width:90%'>");
        System.Web.HttpContext.Current.Response.Write("<table style='border:1px;width:90%'>");
        for (int i = 0; i < T.Rows.Count; i++)
        {
            System.Web.HttpContext.Current.Response.Write("<tr>");
            for (int j = 0; j < T.Columns.Count; j++)
            {
                System.Web.HttpContext.Current.Response.Write("<td>");
                System.Web.HttpContext.Current.Response.Write(T.Rows[i][j].ToString());//访问数据表
                System.Web.HttpContext.Current.Response.Write("</td>");
            }
        }
        System.Web.HttpContext.Current.Response.Write("</tr>");
        System.Web.HttpContext.Current.Response.Write("</table>");

    }
    /*表的插入操作*/
    public void insertIntoTable0(string table, object object1)
    {
        string sql1 = "";
        string sql2 = "";
        string sql3 = "";
        Type T = object1.GetType();
        PropertyInfo[] p1 = T.GetProperties();
        var memberInfos = T.GetProperties();
        foreach (PropertyInfo pi in T.GetProperties())
        {
            object value1 = pi.GetValue(object1, null);
            if (value1.GetType() == typeof(string))
                sql1 = sql1 + "'" + value1 + "',";
            if (value1.GetType() == typeof(int))
                sql1 = sql1 + value1.ToString() + ",";
            if (value1.GetType() == typeof(double))
                sql1 = sql1 + value1.ToString() + ",";
            sql2 = sql2 + pi.Name + ",";
        }
        sql1 = sql1.Substring(0, sql1.Length - 1);
        sql2 = sql2.Substring(0, sql2.Length - 1);
        sql3 = "insert into " + table + "(" + sql2 + ") values (" + sql1 + ")";
        //System.Web.HttpContext.Current.Response.Write("insert into " + table + "(" + sql2 + ") values (" + sql1 + ")");
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql3, cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();

    }
    /*返回一个视图*/
    public  DataView dataView(string sqlStr)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sqlStr, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataView dv = new DataView();
        try
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sqlStr;
            da.SelectCommand = cmd;
            da.Fill(ds);
            dv = ds.Tables[0].DefaultView;
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            cn.Close();
        }
        return dv;
    }
    /*进行计数操作*/
    public string ExecuteCount(string sqlStr)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sqlStr, cn);
        try
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sqlStr;
            cn.Open();
            return (string)cmd.ExecuteScalar();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            cn.Close();
        }
    }
    public int ExecuteNum(string sqlStr)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sqlStr, cn);
        try
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sqlStr;
            cn.Open();
            return (int)cmd.ExecuteScalar();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            cn.Close();
        }
    }
    public static bool Checknum(string str)
    {
        Regex r = new Regex("^[0-9]{4}$");
        if (r.IsMatch(str))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static bool CheckStuId(string str)
    {
        Regex r = new Regex("^[0-9]{13}$");
        if (r.IsMatch(str))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static bool IsEmail(string str)
    {
        // 定义邮箱正则表达式
        Regex r = new Regex(@"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (r.IsMatch(str))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static bool IsPhoneNum(string str)
    {
        Regex r = new Regex(@"^1[3456789]\d{9}$");
        if (r.IsMatch(str))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static bool IsQQNum(string str)
    {
        Regex r = new Regex(@"^[1-9][0-9]{4,}$");
        if (r.IsMatch(str))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}