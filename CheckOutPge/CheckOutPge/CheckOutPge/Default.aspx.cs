using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckOutPge
{
    public partial class Default : System.Web.UI.Page
    
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //valid different versiono of c#
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //mouse on load page stay in this text box
            tbEmail.Focus();
        }

        
        //clear  the form
        private void clearForm()
        {

            tbEmail.Text = "";
            tbReEmail.Text = "";
            tbFirstname.Text = "";
            tbLastname.Text = "";
            tbPhone.Text = "";
            

            tbAddress.Text = "";
            tbCity.Text = "";
            ddlState.SelectedIndex = 0;
            tbZipecode.Text = "";
            
            tbAddress1.Text = "";
            tbCity1.Text = "";
            ddlState1.SelectedIndex = 0;
            tbZipcode1.Text = "";
            
        }
        

        /*this method gets all the data from the user from
         * Notes:
         * Missing city(to be developed)
         * **/

        private string getInfo()
        {
            string firstname = tbFirstname.Text;
            string lastname = tbLastname.Text;
            string email = tbEmail.Text;
            string reemail = tbReEmail.Text;
            string phone = tbPhone.Text;
            
            
            return (firstname + "," + lastname + "," + email + "," + reemail + "," + phone);

        }
        private string getShipping()
        {
            string address = tbAddress.Text;
            string city = tbCity.Text;
            string state = ddlState.SelectedValue;
            string zipecode = tbZipecode.Text;
            

            return (address + "," + city + "," + state + "," + zipecode );

        }
        private string getBilling()
        {
            string address1 = tbAddress1.Text;
            string city1 = tbCity1.Text;
            string state1 = ddlState1.SelectedValue;
            string zipecode1 = tbZipecode.Text;



            return (address1 + "," + city1 + "," + state1 + "," + zipecode1);

        }

        protected void btCheckOut_Click1(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                String userInfo = getInfo();
                String shippingInfo = getShipping();
                String billingInfo = getBilling();

                lblBox.Items.Add(userInfo);
                lblBox.Items.Add(shippingInfo);
                lblBox.Items.Add(billingInfo);



                clearForm();
            }
        }

        protected void chSameAddress_CheckedChanged(object sender, EventArgs e)
        {

            if (chSameAddress.Checked == false )
            {
                 tbAddress1.Enabled=true;
                tbCity1.Enabled = true;
                ddlState1.Enabled = true;
                tbZipecode.Enabled = true;

            }
            else
            {
                tbAddress1.Enabled = false;
                tbCity1.Enabled = false;
                ddlState1.Enabled = false;
                tbZipecode.Enabled = false;

            }

        }
    }
}


            