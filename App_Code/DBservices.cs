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
public class DBservices
{
    public SqlDataAdapter da;
    public DataTable dt;

    public DBservices()
	{
		//
		// TODO: Add constructor logic here
		//
	}



    //------------AYA BEGIN--------------


    public DBservices Read(string connectionSTR, string tableSTR)
    {
        DBservices dbsTMP = new DBservices(); //יצירת אובייקט זמני למתודה
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




    //---------AYA END------------------


    //----------YANIV BEGIN-------------

    
        public DataTable Get_Porflio_DB()
        {
            string myConnectionString = ConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString; //  Making a string for SqlConnection
            using (SqlConnection myConnection = new SqlConnection (myConnectionString))     // Making a SqlConnection
            {
                myConnection.Open();
                SqlCommand myCommand = new SqlCommand("select companyId, companyName, companyCity, companyDescs from Company", myConnection); // Pooling data using an sql command
                using (SqlDataReader SqlReader = myCommand.ExecuteReader())
                {
                    DataTable Data_tbl = new DataTable();      // Making an empty Table for storing the command's results
                    Data_tbl.Columns.Add("ID");
                    Data_tbl.Columns.Add("Name");
                    Data_tbl.Columns.Add("City");
                    Data_tbl.Columns.Add("Descs");

                    while (SqlReader.Read())    // Repeat for every instance/line in sql table
                    {
                        DataRow data_row = Data_tbl.NewRow();
                        data_row["ID"] = SqlReader["companyId"];
                        data_row["Name"] = SqlReader["companyName"];
                        data_row["City"] = SqlReader["companyCity"];
                        data_row["Descs"] = SqlReader["companyDescs"];
                        Data_tbl.Rows.Add(data_row);
                    }
                    return(Data_tbl);
                }
             
            }
        }
	

//----------YANIV END-------------

//---------MAYA BEGIN-----------

//---------MAYA END-----------------





}