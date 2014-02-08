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


    public int CompanyId
    {
        get { return companyId; }
        set { companyId = value; }
    }



	public Company()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}