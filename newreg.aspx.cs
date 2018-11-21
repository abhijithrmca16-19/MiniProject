using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sras_p.law
{
    public partial class newreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (var context = new SRASEntities())
            {

                registration objregister = new registration();
                objregister.Reg_Name = txtname.Text;
                objregister.Reg_Department = txtdept.Text;
                objregister.Reg_Designation = txtdesig.Text;
                objregister.Reg_Email = txtemail.Text;
                objregister.Reg_Contact = txtcontact.Text;
                objregister.Reg_Password = txtpass.Text;
                objregister.Reg_Confirm = txtcpass.Text;
                context.registrations.Add(objregister);
                context.SaveChanges();
               
                Server.Transfer("home.aspx");
            }
        }
    }
}