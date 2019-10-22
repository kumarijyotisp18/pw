using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace powerengineers
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkemail() == false)
            {
                Label3.Text = "Your Email is Not Registered with Us";
            }
            else
            {
                sendcode();
                Response.Redirect("message.aspx");

            }
        }
            private void sendcode()
            {
                try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;

                NetworkCredential netcred = new NetworkCredential("your email address", "password");
                smtp.UseDefaultCredentials = true;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = netcred;

                MailMessage msg = new MailMessage();

                string fromaddress = "Power engineers <your email address>";
                msg.From = new MailAddress(fromaddress);

                string toaddress = TextBox1.Text;
                msg.To.Add(toaddress);



                msg.Subject = "Forgot password";


                msg.IsBodyHtml = true;
               
                NewMethod(smtp, msg);

            }
            catch (Exception ex)
                {

                }


            }

        private static void NewMethod(SmtpClient smtp, MailMessage msg)
        {
            string link = "Please click on the given link to reset your" +
                " password http://localhost:50258/changepassword";

            msg.Body = link;





            smtp.Send(msg);
        }

        private Boolean checkemail()
            {
                Boolean emailavailable = false;
                String mycon = "Data Source=DESKTOP-PGDUMD5;Initial Catalog=details;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                String myquery = "Select * from emaildetails where emailaddress='" + TextBox1.Text + "'";
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    emailavailable = true;

                }
                con.Close();

                return emailavailable;
            }
        }
    }
