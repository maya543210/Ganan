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
    private string customerAdress; // כתובת הלקוח
    private Phone customerPhone; // הטלפון של הלקוח


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

    //---------customerAdress---------
    public string CustomerAdress
    {
        get { return customerAdress; }
        set { customerAdress = value; }
    }

    //----------customerPhone---------
    public Phone CustomerPhone
    {
        get { return customerPhone; }
        set { customerPhone = value; }
    }


	public Customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}