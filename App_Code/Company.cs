using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
    private bool companyGanan; // גננים?
    private bool companyArch; // אדריכלים?
    private string companyDescs; // תיאור קצר של החברה
    private string companyEmail; // מייל
    private List<string> companyServiceArea; // אזור שירות
    private List<Picture> companyListPicture; // רשימת תמונות של הגנן


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
    public bool CompanyGanan
    {
        get { return companyGanan; }
        set { companyGanan = value; }
    }

    //--------------companyArch---------
    public bool CompanyArch
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



	public Company()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}