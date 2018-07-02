using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///DbManger 的摘要说明
/// </summary>
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Eshop.APP_Code
{
    public class DbManger
    {
        #region 定义全局变量，连接字符串
        public static string strcon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        #endregion

        #region 构造函数
        public DbManger()
        {
            strcon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        }
        #endregion

        #region 返回 SqlDataReader ExceRead类型的数据
        /// <summary>
        /// 
        /// </summary>
        /// <param name="SqlCom">sql语句</param>
        /// <returns></returns>
        public static SqlDataReader ExceRead(string SqlCom)
        {
            //创建连接对象
            SqlConnection cn = new SqlConnection(strcon);
            try
            {
                cn.Open();
                //创建命令对象
                SqlCommand cm = new SqlCommand(SqlCom, cn);
                //执行命令对象，返回数据阅读器
                SqlDataReader dr = cm.ExecuteReader();
                return dr;
            }
            catch (SqlException e)
            {
                throw new Exception(e.Message);
            }
        }
        #endregion

        #region 返回dataset类型数据并获得tableName参数
        public static DataSet GetDataSet(string sqlcom, string tableName)
        {
            //创建连接对象
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = strcon;
            conn.Open();

            //创建命令对象
            //SqlCommand comm = new SqlCommand();
            //comm.Connection = conn;
            //comm.CommandText = sqlcom;

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sqlcom,conn);
            //da.SelectCommand = comm;
            da.Fill(ds, tableName);

            return ds;
        }
        #endregion

        #region 执行SQL语句，包括增删改
        public static bool ExceSQL(string strSqlCom)
        {
            SqlConnection conn = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand(strSqlCom,conn);
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                com.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                conn.Close();
            }
            
        }
        #endregion

        #region 返回 SqlDataReader-ExceScalar类型的数据
        public static object ExceScalar(string SqlCom)
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(SqlCom,con);
                object strdata = com.ExecuteScalar();
                return strdata;
            }
            catch (System.Data.SqlClient.SqlException E)
            {
                
                throw new Exception(E.Message);
            }
        }
        #endregion
    }
}
