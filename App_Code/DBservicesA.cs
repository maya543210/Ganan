using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Text;

// זה השכבה שמדברת עם הנתונים מהדאטה בייס , וצירפתי גם את הקובץ שעשינו פעם שעברה בתור דוגמה

/// <summary>
/// Summary description for DBservices
/// </summary>
public class DBservicesA
{
    public SqlDataAdapter da;
    public DataTable dt;
    public DataSet ds;
    public DBservicesA()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public DBservicesA ReadFromDataBase(string conString, string tableName)
    {
        DBservicesA dbS = new DBservicesA(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dbS.connect(conString); // open the connection to the database/

            String selectStr = "SELECT * FROM " + tableName; // create the select that will be used by the adapter to select data from the DB

            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter

            DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
            da.Fill(ds, "dbo.Company");                        // Fill the datatable (in the dataset), using the Select command

            DataTable dt = ds.Tables[0];

            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dbS.dt = dt;
            dbS.da = da;
            dbS.ds = ds;

            return dbS;
        }
        catch (Exception ex)
        {
            // write to log
            throw ex;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }




    public DBservicesA ReadFromDataBase_1(string conString, string tableName1, string tableName2)
    {
        DBservicesA dbS_tmp = new DBservicesA(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dbS_tmp.connect(conString); //connect to db

            String selectStr = "SELECT * FROM " + tableName1 + "," + tableName2 + " where " + tableName1 +".companyId =1 and " + tableName1 + ".companyServiceAreaId = " + tableName2 + ".companyServiceAreaId"; // create the select that will be used by the adapter to select data from the DB
         
            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); //  dataAdapter

            DataSet ds = new DataSet(); // create DataSet 
            da.Fill(ds, "dbo.Company");// Fill the datatable (in the dataset)

            DataTable dt = ds.Tables[0];

            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dbS_tmp.dt = dt;
            dbS_tmp.da = da;
            dbS_tmp.ds = ds;

            return dbS_tmp;
        }
        catch (Exception ex)
        {
            // write to log
            throw ex;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }



    /*CREATE CONNECTION TO DB*/
    public SqlConnection connect(String conString)
    {

        // read the connection string from the configuration file
        string cStr = WebConfigurationManager.ConnectionStrings[conString].ConnectionString;
        SqlConnection con = new SqlConnection(cStr);
        con.Open();
        return con;
    }


}