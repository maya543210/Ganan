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

    public DBservicesA()
	{
		//
		// TODO: Add constructor logic here
		//
	}





    public DBservicesA Read(string connectionSTR, string tableSTR)
    {
        DBservicesA dbsTMP = new DBservicesA(); //יצירת אובייקט זמני למתודה
        SqlConnection con = null;
        try
        {
            con = connect(connectionSTR);//פתיחת הקשר למסד נתונים
            string commandSTR = "SELECT * FROM " + tableSTR; //יצירת הפקודה למסד הנתונים
            SqlDataAdapter da = new SqlDataAdapter(commandSTR, con);//יצירת דטה אדפטר
            DataSet ds = new DataSet();//יצירת דטהסט חדש
            da.Fill(ds);//הכנסת נתונים אל תוך DataTable
            DataTable dt = ds.Tables[0];//טבלה במיקום ה-0 במסד הנתונים היא הטבלה שאנו רוצים אל תוך ה-dt
            
            //נוסיף את הדטהטבל ודטה אדפטר אל תוך הדטהבייס סרוויס הזמני במטרה לשלוח אותו חזרה..
            dbsTMP.dt = dt;
            dbsTMP.da = da;


            return dbsTMP;
        }

        catch(Exception ex)
        {
           //לכתוב משהו.. על השגיאה
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }

    }

//    /--------יצירת קשר למסד הנתונים--------------------------------/

    public SqlConnection connect(String conString)
    {

        // read the connection string from the configuration file
        string cStr = WebConfigurationManager.ConnectionStrings[conString].ConnectionString;
        SqlConnection con = new SqlConnection(cStr);
        con.Open();
        return con;
    }







}