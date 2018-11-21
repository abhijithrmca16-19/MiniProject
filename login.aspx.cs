using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sras_p.law
{
    public partial class login : System.Web.UI.Page
    {
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (var context=new SRASEntities())
            {

                var objReg = (from r in context.registrations where r.Reg_Name == txtuname.Text & r.Reg_Password == txtpaswrd.Text select r).ToList();
                if(objReg.Count >= 1)
                {
                    Response.Redirect("userhome.aspx");
                }
                else
                {
                    lblMsg.Text = "Incorrect Username or Password";
                }
                //admin_login objadminlgn = new admin_login();
                //objadminlgn.username = txtuname.Text;
                //objadminlgn.password = txtpaswrd.Text;

                
        //string strSelect = "SELECT COUNT(*) FROM registration WHERE  Reg_name = @Username AND Reg_pass = @Password";

       
       

        //if (result >= 1)
        //{
        //   Server.Transfer("userhome.aspx");
        //    }
        //}
        //else
        //    lblMsg.Text = "Incorrect Username or Password";
        
   // }

            }
        }
    }
}