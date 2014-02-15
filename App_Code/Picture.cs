using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Picture
/// </summary>
public class Picture
{
    private string imageCompanyId; // המספר זיהוי של החברה
    private string imageId; // המספר זיהוי של התמונה 
    private string imageUrl; // כתובת של התמונה URL
    private string imageDescription; // תיאור התמונה

    //-----------imageCompanyId---------
    public string ImageCompanyId
    {
        get { return imageCompanyId; }
        set { imageCompanyId = value; }
    }

    //-----------imageId---------
    public string ImageId
    {
        get { return imageId; }
        set { imageId = value; }
    }

    //----------imageUrl-------
    public string ImageUrl
    {
        get { return imageUrl; }
        set { imageUrl = value; }
    }

    //---------imageDescription-------
    public string ImageDescription
    {
        get { return imageDescription; }
        set { imageDescription = value; }
    }


	public Picture()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}