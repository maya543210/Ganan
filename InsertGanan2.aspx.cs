using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;


public partial class _InsertGanan2 : System.Web.UI.Page
{
    int compenyNextID = 4;


    protected void Page_Load(object sender, EventArgs e)
    {
        //=========read only last id============

        
        //Response.Write("מאיה קידר");
        /*
        DBservicesM myDBservices = new DBservicesM();
        DataTable myDataTable = myDBservices.readID();
        foreach (DataRow row in myDataTable.Rows)
        {
            compenyNextID = row.Field<int>("ID");
            //compenyNextID = row.ToString;
        }
        Response.Write(Convert.ToString( compenyNextID));
        //DataToProject(myDataTable);
        */

    }




    protected void Bsend_Click(object sender, EventArgs e)
    {
        DBservicesM dBservicesM = new DBservicesM();
        Lerorr.Text = " maya maya maya";
        Response.Write(" test Button Bsend_Click");

        Company company = new Company();
       // if (Page.IsValid)
       // {

            Response.Write(" Page is Valid");

            //------------------------------------------ Saving Image Url -----------------------------------------

            string filename = Path.GetFileName(FUCompanyLogoUrl.FileName);
            string ImgPath = Server.MapPath("Images/images ") + compenyNextID + "/" + filename;
        /*
            try
            {
                FUCompanyLogoUrl.SaveAs(ImgPath);
            }
            catch (Exception ex)
            {
                Lerorr.Text += "הקובץ לא נשמר בהצלחה, ראה הודעה: " + ex.Message;
            }
         */

            ImgPath = "Images/images " + compenyNextID + "/" + filename;
            company.CompanyLogoUrl = ImgPath;

            //========================================= Saving Image Url ==========================================
/*
            string Submit_CS = ConfigurationManager.ConnectionStrings["DBconnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(Submit_CS))
            {
                int TotalRowsAffected = 0;
                SqlCommand cmd = new SqlCommand();

                //company
                cmd.CommandText = "insert into Company values('" + TextBox_Name.Text + "','" + TextBox_Price.Text + "','" + ImgPath + "','" + TextBox_Amount.Text + "','" + Discountbool + "')";
                //companyimage
                cmd.CommandText = "insert into Company values('" + TextBox_Name.Text + "','" + TextBox_Price.Text + "','" + ImgPath + "','" + TextBox_Amount.Text + "','" + Discountbool + "')";

                // For Checking only :
                Lerorr.Text += "The Command Text is : " + cmd.CommandText;
                // please delete

                cmd.Connection = con;
                con.Open();
                try
                {
                    TotalRowsAffected = cmd.ExecuteNonQuery();
                }
                catch (Exception Ex) { Lerorr.Text += " הודעת שרת SQL: " + Ex.Message; }

                if (TotalRowsAffected == 1)
                {
                    Lerorr.Text += "המוצר התווסף בהצלחה למאגר הנתונים";
                }
                else
                {
                    Lerorr.Text += "קרתה תקלה בנסיון להוסיף את המוצר למאגר הנתונים";
                }

            }

*/

            //Company company = new Company();
            //company.CompanyId
            company.CompanyCode = Convert.ToInt16(TBcompanyCode.Text);
            company.CompanyName = TBcompanyName.Text;


            if (TBcompanyPhone1.Text != null)
            {
                company.CompanyPhone1.PhoneAreaCode = Convert.ToInt16(TBcompanyPhone1.Text);
                company.CompanyPhone1.PhoneNumber = Convert.ToInt16(TBcompanyPhone1.Text);
            }

            company.CompanyPhone2.PhoneAreaCode = Convert.ToInt16(TBcompanyPhone2.Text);
            company.CompanyPhone2.PhoneNumber = Convert.ToInt16(TBcompanyPhone2.Text);
            company.CompanyCity = TBCompanyCity.Text;
            company.CompanyAddress = TBcompanyAddress.Text;

            company.CompanyGanan = CBCompanyGanan.Checked;
            company.CompanyArch = CBCompanyArch.Checked;

            company.CompanyDescs = TBCompanyDescs.Text;
            company.CompanyEmail = TBCompanyEmail.Text;

            if (DDLcompanyServiceArea1.Text != null)
                company.CompanyServiceArea.Add(DDLcompanyServiceArea1.Text);
            if (DDLcompanyServiceArea2.Text != null)
                company.CompanyServiceArea.Add(DDLcompanyServiceArea2.Text);
            /*
            foreach (Picture pic in company.CompanyListPicture)
            {
                pic.ImageCompanyId = 1;
                pic.ImageUrl = "";
                pic.ImageDescription = "";
            }
            */

            int numRowEffect = 0;
            numRowEffect = dBservicesM.insert(company);
            Lerorr.Text = " end code "+ Convert.ToSingle(numRowEffect) + "num row effected";
       // }

    }
        


/*        
        try
        {
            company.updateDatabase();
        }
        catch (Exception ex) {
            Response.Write("Error updating the company database " + ex.Message);
        }
    

    }
*/

/*


    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUploadPicture1.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUploadPicture1.FileName);
                FileUploadPicture1.SaveAs(Server.MapPath("~/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
*/


}