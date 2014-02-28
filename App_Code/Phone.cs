using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Phone
/// </summary>
public class Phone
{
    private int phoneAreaCode; // אזור חיוג
    private int phoneNumber; // מספר הטלפון

    //---------phoneSourceId-------
    public string PhoneSourceId
    {
        get { return phoneSourceId; }
        set { phoneSourceId = value; }
    }

    //-------phoneAreaCode------
    public int PhoneAreaCode
    {
        get { return phoneAreaCode; }
        set { phoneAreaCode = value; }
    }

    //-------phoneNumber---------
    public int PhoneNumber
    {
        get { return phoneNumber; }
        set { phoneNumber = value; }
    }


	public Phone()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}