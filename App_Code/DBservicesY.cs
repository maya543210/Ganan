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
public class DBservicesY
{
    public SqlDataAdapter da;
    public DataTable dt;

    public DBservicesY()
	{
		//
		// TODO: Add constructor logic here
		//
	}


        public DataTable Get_Porflio_DB()
        {
            string myConnectionString = WebConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString; //  Making a string for SqlConnection
            using (SqlConnection myConnection = new SqlConnection (myConnectionString))     // Making a SqlConnection
            {
                myConnection.Open();
                SqlCommand myCommand = new SqlCommand("select companyId, companyName, companyCity, companyDescs, companyLogoUrl from Company", myConnection); // Pooling data using an sql command
                using (SqlDataReader SqlReader = myCommand.ExecuteReader())
                {
                    DataTable Data_tbl = new DataTable();      // Making an empty Table for storing the command's results
                    Data_tbl.Columns.Add("ID");
                    Data_tbl.Columns.Add("Name");
                    Data_tbl.Columns.Add("City");
                    Data_tbl.Columns.Add("Descs");
                    Data_tbl.Columns.Add("LogoUrl");

                    while (SqlReader.Read())    // Repeat for every instance/line in sql table
                    {
                        DataRow data_row = Data_tbl.NewRow();
                        data_row["ID"] = SqlReader["companyId"];
                        data_row["Name"] = SqlReader["companyName"];
                        data_row["City"] = SqlReader["companyCity"];
                        data_row["Descs"] = SqlReader["companyDescs"];
                        data_row["LogoUrl"] = SqlReader["companyLogoUrl"];
                        Data_tbl.Rows.Add(data_row);
                    }
                    return(Data_tbl);
                }
             
            }
        }




}