using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _InsertGanan2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("מאיה קידר");
    }

    protected void Bsend_Click(object sender, EventArgs e)
    {

        Company company = new Company();
        //company.CompanyId
        company.CompanyCode = Convert.ToInt16(TBcompanyCode.Text);
        company.CompanyName = TBcompanyName.Text;
        company.CompanyPhone1.PhoneAreaCode = Convert.ToInt16(TBcompanyPhone1.Text);
        company.CompanyPhone1.PhoneNumber = Convert.ToInt16(TBcompanyPhone1.Text);
        company.CompanyPhone2.PhoneAreaCode = Convert.ToInt16(TBcompanyPhone2.Text);
        company.CompanyPhone2.PhoneNumber = Convert.ToInt16(TBcompanyPhone2.Text);
        company.CompanyCity = TBCompanyCity.Text;
        company.CompanyAddress = TBcompanyAddress.Text;

        company.CompanyGanan = CBCompanyGanan.Checked;
        company.CompanyArch = CBCompanyArch.Checked;
 
        company.CompanyDescs = TBCompanyDescs.Text;
        company.CompanyEmail = TBCompanyEmail.Text;

        if (DDLcompanyServiceArea1.Text!=null)
        company.CompanyServiceArea.Add(DDLcompanyServiceArea1.Text);
        if (DDLcompanyServiceArea2.Text != null)
        company.CompanyServiceArea.Add(DDLcompanyServiceArea2.Text);

        foreach (Picture pic in company.CompanyListPicture) 
        {
            pic.ImageCompanyId =123;
            pic.ImageUrl = "";
            pic.ImageDescription = "";
        }

    }


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