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
            //????????????????????????????validate different version of c#
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String newUser = getInfo();
            lblBox.Text = newUser;
            lbPrint.Text = getInfo();
            lbPrint.Text = getShipping();
            lbPrint.Text = getBilling();

            clearForm();
        }
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
            

            if (chSameAddress.Checked !=true)
            {

                tbAddress1.Text = "";
                tbCity1.Text = "";
                ddlState1.SelectedIndex = 0;
                tbZipcode1.Text = "";
            }
            else
            {
//                //////
//                < table >
//    < tr >
//        < td >
//            < asp:CheckBox ID = "chkbxUS" runat = "server" onchange = "validate();" />


//             </ td >


//             < td id = "ParentCountryInfo" >


//                  < asp:TextBox ID = "TextBox1" runat = "server" > Disappear me </ asp:TextBox >


//                       </ td >


//                   </ tr >
//               </ table >



//               < script type = "text/javascript" >
//                    function validate() {
//                    if (document.getElementById('<%=chkbxUS.ClientID%>').checked) {
//                            document.getElementById("ParentCountryInfo").style.visibility = 'hidden';
//                        } else {
//                            document.getElementById("ParentCountryInfo").style.visibility = 'visible';
//                        }
//                        }
//</ script >
                            }


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
            /////?????????????????????????????????????????????????????????????????
            string zipecode = tbZipecode.Text;
            

            return (address + "," + city + "," + state + "," + zipecode );

        }
        private string getBilling()
        {
            string address1 = tbAddress1.Text;
            string city1 = tbCity1.Text;
            string state1 = ddlState1.SelectedValue;
            /////?????????????????????????????????????????????????????????????????
            string zipecode1 = tbZipecode.Text;



            return (address1 + "," + city1 + "," + state1 + "," + zipecode1);

        }


    }
}

