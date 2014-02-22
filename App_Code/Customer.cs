using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private int customerIdNumber; // מספר רץ של הלקוחות שנרשמים
    private string customerFirstName; // שם פרטי של הלקוח
    private string customerLastName; // שם משפחה של הלקוח
    private string customerCity; // עיר של הגנן
    private string customerAddress; // כתובת: רחוב, מספר בית
    private Phone customerPhone; // הטלפון של הלקוח
    private string customerDescs; // תיאור השירות בבית הלקוח
  

    //------customerIdNumber-------
    public int CustomerIdNumber
    {
        get { return customerIdNumber; }
        set { customerIdNumber = value; }
    }

    //---------customerFirstName---------
    public string CustomerFirstName
    {
        get { return customerFirstName; }
        set { customerFirstName = value; }
    }

    //---------customerLastName---------
    public string CustomerLastName
    {
        get { return customerLastName; }
        set { customerLastName = value; }
    }

    //---------customerCity---------
    public string CustomerCity
    {
        get { return customerCity; }
        set { customerCity = value; }
    }

    //---------customerAdress---------
    public string CustomerAddress
    {
        get { return customerAddress; }
        set { customerAddress = value; }
    }

    //----------customerPhone---------
    public Phone CustomerPhone
    {
        get { return customerPhone; }
        set { customerPhone = value; }
    }

    //------customerDescs-------
    public string CustomerDescs
    {
        get { return customerDescs; }
        set { customerDescs = value; }
    }



	public Customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}