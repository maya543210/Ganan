﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Text.RegularExpressions;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;

public partial class Show2_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("איה טולדנו");

        //ImageCompany.ImageUrl = "http://goaskella.com/wp-content/uploads/2011/09/missing.jpeg";
      
    }

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        //string howMuch = "[unknown]";

        //switch (LikeRating.CurrentRating)
        //{
        //    case 1:
        //        howMuch = "a bit.";
        //        break;
        //    case 2:
        //        howMuch = "some.";
        //        break;
        //    case 3:
        //        howMuch = "a fair bit.";
        //        break;
        //    case 4:
        //        howMuch = "a lot.";
        //        break;
        //    case 5:
        //        howMuch = "more than any thing.";
        //        break;
        //}

        //LblResponse.Text = "You like ASP.NET AJAX <b>" + howMuch + "</b>.";
    }

    //protected void SubmitRating(object sender, EventArgs e)
    //{
    //    int rating = Rating2.CurrentRating;
        //Submit to database...
    //}
}