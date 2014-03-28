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

public partial class _InsertGanan : System.Web.UI.Page
{
    int compenyNextID = 4;


    protected void Page_Load(object sender, EventArgs e)
    {
        DBservicesM dBservicesM = new DBservicesM();
        DataTable dt = new DataTable();
        dt = dBservicesM.readFromCompanyServiceArea();
        foreach (DataRow row in dt.Rows)
        {
            ListItem li = new ListItem(); // שורה בDDL
            li.Text = row.ItemArray[1].ToString(); //עמודה 1
            li.Value = row.ItemArray[0].ToString();
            DDLcompanyServiceArea1.Items.Add(li);
            //DDLcompanyServiceArea2.Items.Add(li);
        }

        dt = dBservicesM.readFromCompanyServiceArea();
        foreach (DataRow row in dt.Rows)
        {
            ListItem li = new ListItem(); // שורה בDDL
            li.Text = row.ItemArray[1].ToString(); //עמודה 1
            li.Value = row.ItemArray[0].ToString();
            //DDLcompanyServiceArea1.Items.Add(li);
            DDLcompanyServiceArea2.Items.Add(li);
        }

        /*
        List<string> listString = new List<string>();
        dt = dBservicesM.readFromCompanyServiceArea();
        foreach (DataRow row in dt.Rows)
        {
           listString.Add(row.ItemArray[1].ToString());
        }
        */

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
        Directory.CreateDirectory(ImgPath);
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
        company.CompanyCode = Convert.ToInt32(TBcompanyCode.Text);
        company.CompanyName = TBcompanyName.Text;

        Phone phone1 = new Phone();
        phone1.PhoneAreaCode = Convert.ToInt32(DDLcompanyPhone1.SelectedItem.Text);
        phone1.PhoneNumber = Convert.ToInt32(TBcompanyPhone1.Text);

        company.CompanyPhone1 = phone1;

        //company.CompanyPhone1.PhoneAreaCode = 09;
        //Convert.ToInt32(DDLcompanyPhone1.SelectedItem.Text);
        //company.CompanyPhone1.PhoneNumber = 79879879;
        //Convert.ToInt32(TBcompanyPhone1.Text);


        Phone phone2 = new Phone();
        phone2.PhoneAreaCode = Convert.ToInt32(DDLcompanyPhone2.SelectedItem.Text);
        phone2.PhoneNumber = Convert.ToInt32(TBcompanyPhone2.Text);

        company.CompanyPhone2 = phone2;


        //company.CompanyPhone2.PhoneAreaCode = 34543;
            //Convert.ToInt32(DDLcompanyPhone1.Text);
        //company.CompanyPhone2.PhoneNumber = Convert.ToInt32(TBcompanyPhone2.Text);
        company.CompanyCity = TBCompanyCity.Text;
        company.CompanyAddress = TBcompanyAddress.Text;

        if (CBCompanyGanan.Checked == true)
            company.CompanyGanan = 1;
        else company.CompanyGanan = 0;

        if (CBCompanyArch.Checked == true)
            company.CompanyArch = 1;
        else company.CompanyArch = 0;

        //company.CompanyGanan = Convert.ToInt32( CBCompanyGanan.Checked);
        //company.CompanyArch = Convert.ToInt32(CBCompanyArch.Checked);

        company.CompanyDescs = TBCompanyDescs.Text;
        company.CompanyEmail = TBCompanyEmail.Text;

        List<string> companyServiceArea1 = new List<string>();
        companyServiceArea1.Add(DDLcompanyServiceArea1.Text);
        companyServiceArea1.Add(DDLcompanyServiceArea2.Text);

        company.CompanyServiceArea = companyServiceArea1;

        //company.CompanyServiceArea.Add("צפון");
        //company.CompanyServiceArea.Add("שרון");
        /*
        if (DDLcompanyServiceArea1.Text != null)
            company.CompanyServiceArea.Add(DDLcompanyServiceArea1.Text);
        if (DDLcompanyServiceArea2.Text != null)
            company.CompanyServiceArea.Add(DDLcompanyServiceArea2.Text);
        */
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
        Lerorr.Text = " end code " + Convert.ToSingle(numRowEffect) + "num row effected";
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