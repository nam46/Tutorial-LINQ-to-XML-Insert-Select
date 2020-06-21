using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
namespace LINQtoXMLInsertApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Focus();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text))
            {
                Label5.Text = "Please Enter Some Values";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                XDocument document = XDocument.Load(Server.MapPath("Employee.xml"));
                document.Element("Employees").Add(new XElement("Employee", new XElement("Id", TextBox4.Text), new XElement("FirstName", TextBox1.Text), new XElement("LastName", TextBox2.Text), new XElement("Age", TextBox3.Text)));
                document.Save(Server.MapPath("Employee.xml"));
                Label5.Text = "Data Inserted Successfully";
                Label5.ForeColor = System.Drawing.Color.Green;
                TextBox4.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            XDocument document = XDocument.Load(@"file:///C:/Users/HALO_ANAM%20!!/Documents/Visual%20Studio%202015/Projects/LINQtoXMLMySelectApp%20-%20Copy/LINQtoXMLMySelectApp/Employee.xml");
            var query = from r in document.Descendants("Employee")
                        where (int)r.Element("Age") > 0
                        select new
                        {
                            FirstName = r.Element("FirstName").Value,
                            Age = r.Element("Age").Value
                        };
            GridView1.DataSource = query;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}