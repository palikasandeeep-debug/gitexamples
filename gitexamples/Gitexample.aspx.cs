using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gitexamples
{
    public partial class Gitexample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lblmsg.Text = " Person Details are:" + "<br>" + "fistname:" + " " + txtfname.Text + "<br>" + "last name:" + " " + txtlname.Text + "<br>" + "email:" + " " + txtemail.Text + "<br>" + "password :" + " " + txtpass.Text +
               "<br>" + "confirm password :" + " " + txtcpass.Text + "<br>" + "gender:" + " " + radiogen.SelectedValue+"<br>"+"ur age is:"+" "+txtage.Text;

            txtemail.Text = "";
            txtlname.Text = "";
            txtfname.Text = "";
            txtmob.Text = "";
            radiogen.SelectedIndex = -1;



        }
        protected void servercustumvalidator(object source,ServerValidateEventArgs args)
        {
            int age;
            if(int.TryParse(txtage.Text,out age))
             {
                args.IsValid = (age >= 18 && age <= 60);

            }
            else
            {
                args.IsValid = false;
            }
        }



    }
}