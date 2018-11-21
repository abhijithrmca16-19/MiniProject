using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sras_p.law
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbook_Click1(object sender, EventArgs e)
        {
            using (var context=new SRASEntities())
            {
                request_book11 objhall = new request_book11();
                objhall.req_ac = txtac.Text;
                objhall.req_capacity = txtcap.Text;
                objhall.req_date = txtrdate.Text;
                objhall.req_dept = txtdep.Text;
                objhall.req_purpose = txtrdate.Text;
                objhall.req_resource = txthname.Text;
                objhall.req_eventdate = txtdate.Text;
                objhall.req_eventtime = txttime.Text;
                objhall.req_status = txtstatus.Text;
               context.request_book11.Add(objhall);
                context.SaveChanges();


            }
        }

       
    }
}