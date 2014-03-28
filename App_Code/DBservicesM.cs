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



    //התחברות למסד נתונים
    public SqlConnection connect(String conString)
    {

        // read the connection string from the configuration file
        string cStr = WebConfigurationManager.ConnectionStrings[conString].ConnectionString;
        SqlConnection con = new SqlConnection(cStr);
        con.Open();
        return con;
    }

    //ליצור פקודת שאילתת SQL
    private SqlCommand CreateCommand(String CommandSTR, SqlConnection con)
    {

        SqlCommand cmd = new SqlCommand(); // create the command object

        cmd.Connection = con;              // assign the connection to the command object

        cmd.CommandText = CommandSTR;      // can be Select, Insert, Update, Delete 

        cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds

        cmd.CommandType = System.Data.CommandType.Text; // the type of the command, can also be stored procedure

        return cmd;
    }


    //להוסיף למסד נתונים
    public int insert(Company comp)
    {
        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("DBconnectionString"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        String cStr = BuildInsertCommand(comp);      // helper method to build the insert string

        cmd = CreateCommand(cStr, con);             // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {

            // write to log
            throw (ex);
            //return 0;
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }

    }

    //בונה פקודות SQL
    private String BuildInsertCommand(Company comp)
    {
        String command;

        StringBuilder sb = new StringBuilder();
        // use a string builder to create the dynamic string
        String startCommand = "INSERT INTO Company ";
        sb.AppendFormat("Values({0}, '{1}' ,{2}, {3}, {4}, {5}, '{6}', '{7}', {8}, {9}, '{10}', '{11}', '{12}')", 
            comp.CompanyCode, //0
            comp.CompanyName, //1
            comp.CompanyPhone1.PhoneAreaCode, //2
            comp.CompanyPhone1.PhoneNumber, //3
            comp.CompanyPhone2.PhoneAreaCode,//4
            comp.CompanyPhone2.PhoneNumber,//5
            comp.CompanyCity, //6
            comp.CompanyAddress, //7
            comp.CompanyGanan, //8
            comp.CompanyArch, //9 
            comp.CompanyDescs, //10
            comp.CompanyEmail, //11
            comp.CompanyLogoUrl ) ; //12

        command = startCommand + sb.ToString();


        return command;
    }



    //קורא ממסד הנתונים
    public DBservicesM ReadFromDataBase(string conString, String selectStr)
    {

        DBservicesM dBservicesM = new DBservicesM(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dBservicesM.connect(conString); // open the connection to the database/



            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter

            DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
            da.Fill(ds);                        // Fill the datatable (in the dataset), using the Select command

            DataTable dt = ds.Tables[0];

            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dBservicesM.dt = dt;
            dBservicesM.da = da;

            return dBservicesM;
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





/*
    public DataTable readID()
    {
        string myConnectionString = WebConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString; //  Making a string for SqlConnection
        using (SqlConnection myConnection = new SqlConnection(myConnectionString))     // Making a SqlConnection
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand("select companyId from Company", myConnection); // Pooling data using an sql command
            using (SqlDataReader SqlReader = myCommand.ExecuteReader())
            {
                DataTable Data_tbl = new DataTable();      // Making an empty Table for storing the command's results
                Data_tbl.Columns.Add("ID");
               

                while (SqlReader.Read())    // Repeat for every instance/line in sql table
                {
                    DataRow data_row = Data_tbl.NewRow();
                    data_row["ID"] = SqlReader["companyId"];
                   
                    Data_tbl.Rows.Add(data_row);
                }
                return (Data_tbl);
            }

        }
    }

*/


/*

    //---------------------------------------------------------------------------------
    // update the dataset into the database
    //---------------------------------------------------------------------------------
    public void Update()
    {
        // the command build will automatically create insert/update/delete commands according to the select command
        SqlCommandBuilder builder = new SqlCommandBuilder(da);
        da.Update(dt);
    }
*/

/* yaniv idea
 
    public DataTable readData()
    {
        string myConnectionString = WebConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString; //  Making a string for SqlConnection
        using (SqlConnection myConnection = new SqlConnection(myConnectionString))     // Making a SqlConnection
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
                return (Data_tbl);
            }

        }
    }

*/

}