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
    private int companyCode; // 
    private string companyName; // שם החברה
    private int areaCode; // אזור חיוג
    private int companyTel; //טלפון
    private string companyCity; // עיר של החברה
    private string companyAddress; // כתובת: רחוב, מספר בית
    private bool companyGanan; // גננים?
    private bool companyArch; // אדריכלים?
    private string companyDescs; // תיאור קצר של החברה



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