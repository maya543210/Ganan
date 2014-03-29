using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Company
/// </summary>
public class Company
{
    private int companyId; // מספר רץ של החברה
    private int companyCode; // ח.פ. של החברה
    private string companyName; // שם החברה
    private Phone companyPhone1; // מספר טלפון1 
    private Phone companyPhone2; // מספר טלפון2
    private string companyCity; // עיר של החברה
    private string companyAddress; // כתובת: רחוב, מספר בית
    private int companyGanan; // גננים?
    private int companyArch; // אדריכלים?
    private string companyDescs; // תיאור קצר של החברה
    private string companyEmail; // מייל
    private List<string> companyServiceArea; // אזור שירות
    private List<Picture> companyListPicture; // רשימת תמונות של הגנן
    private string companyLogoUrl;


    //-----------companyId---------
    public int CompanyId
    {
        get { return companyId; }
        set { companyId = value; }
    }

    //-----------companyCode----------
    public int CompanyCode
    {
        get { return companyCode; }
        set { companyCode = value; }
    }

    //-----------companyName---------
    public string CompanyName
    {
        get { return companyName; }
        set { companyName = value; }
    }

    //--------------companyPhone1----------
    public Phone CompanyPhone1
    {
        get { return companyPhone1; }
        set { companyPhone1 = value; }
    }

    //-------------companyPhone2------------
    public Phone CompanyPhone2
    {
        get { return companyPhone2; }
        set { companyPhone2 = value; }
    }

    //-------------companyCity------------
    public string CompanyCity
    {
        get { return companyCity; }
        set { companyCity = value; }
    }

    //--------------companyAddress----------
    public string CompanyAddress
    {
        get { return companyAddress; }
        set { companyAddress = value; }
    }

    //-----------companyGanan-----------
    public int CompanyGanan
    {
        get { return companyGanan; }
        set { companyGanan = value; }
    }

    //--------------companyArch---------
    public int CompanyArch
    {
        get { return companyArch; }
        set { companyArch = value; }
    }

    //------------CompanyDescs-----------
    public string CompanyDescs
    {
        get { return companyDescs; }
        set { companyDescs = value; }
    }

    //------------CompanyEmail---------
    public string CompanyEmail
    {
        get { return companyEmail; }
        set { companyEmail = value; }
    }

    //--------------companyServiceArea---------
    public List<string> CompanyServiceArea
    {
        get { return companyServiceArea; }
        set { companyServiceArea = value; }
    }

    //--------------companyListPicture-------------
    public List<Picture> CompanyListPicture
    {
        get { return companyListPicture; }
        set { companyListPicture = value; }
    }

    //--------------companyLogoUrl-------------
    public string CompanyLogoUrl
    {
        get { return companyLogoUrl; }
        set { companyLogoUrl = value; }
    }


	public Company()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //--------aya end-------------
    public DataTable readDataDB()
    {
        DBservicesA dbs = new DBservicesA(); //יצירת dbs חדש 
        dbs = dbs.ReadFromDataBase("DBconnectionString", "dbo.Cars");
        //לאחר החזרה מהמתודה בדי בי סרוויס, נשמור את האובייקט בסשיין
        //HttpContext.Current.Session["tmp"] = dbs;
        return dbs.dt;
    }

    //----------aya start ------------

    public DataSet readCompanyDB()
    {
        DBservicesA dbs = new DBservicesA();
        dbs = dbs.ReadFromDataBase("DBconnectionString", "dbo.Company");
        // save the dataset in a session object

        //HttpContext.Current.Session["carsDataSet"] = dbs;


        return dbs.ds;
    }

    public DataTable readCompanyDBRate()
    {
        DBservicesA dbs = new DBservicesA();
        dbs = dbs.ReadFromDataBase("DBconnectionString", "dbo.rating");
        // save the dataset in a session object

        //HttpContext.Current.Session["carsDataSet"] = dbs;


        return dbs.dt;
    }


    public DBservicesA readCompanyDB_Area()
    {
        DBservicesA dbs = new DBservicesA();
        dbs = dbs.ReadFromDataBase_1("DBconnectionString", "dbo.GananCompanyServiceArea ", "dbo.companyServiceArea");
        // save the dataset in a session object

        //HttpContext.Current.Session["carsDataSet"] = dbs;


        return dbs;
    }


    public DataTable readComp()
    {
        DBservicesA dbs = new DBservicesA();
        dbs = dbs.ReadFromDataBase("DBconnectionString", "dbo.Company");
        // save the dataset in a session object

        //HttpContext.Current.Session["carsDataSet"] = dbs;


        return dbs.dt;

    }


    //-----------maya start-----------

/*

    public void updateTable()
    {

        if (HttpContext.Current.Session["companyDataSet"] == null) return;

        DBservicesM dbs = (DBservicesM)HttpContext.Current.Session["companyDataSet"];       
        DataRow data_row = dbs.dt.NewRow();
        data_row["ID"] = "companyId";
        data_row["Name"] = "companyName";
        data_row["City"] = "companyCity";
        data_row["Descs"] = "companyDescs";
        data_row["LogoUrl"] = "companyLogoUrl";
        dbs.dt.Rows.Add(data_row);
        //data_row==dr in cars

    }



    //---------------------------------------------------------------------------------
    // update the database
    //---------------------------------------------------------------------------------
    public void updateDatabase()
    {

        if (HttpContext.Current.Session["companyDataSet"] == null) return;

        DBservicesM dbs = (DBservicesM)HttpContext.Current.Session["companyDataSet"];

        dbs.Update();

    }


    public DataTable getTableFromSession(string sessionName)
    {

        if (HttpContext.Current.Session[sessionName] != null)
        {
            DBservicesM dbs = (DBservicesM)(HttpContext.Current.Session[sessionName]);
            return dbs.dt;
        }
        else
        {
            return null;
        }

    }

*/

    //------------maya end----------

}