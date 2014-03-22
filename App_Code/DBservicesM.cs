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
public class DBservicesM
{
    public SqlDataAdapter da;
    public DataTable dt;

    public DBservicesM()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    //public DBservicesM write(string maya) { }

}