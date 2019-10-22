using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

namespace powerengineers
{
    public partial class signup : System.Web.UI.Page
    {
        static String activationcode;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkemail() == true)
            {
                Label2.Text = "Your Email Already Registered with Us";
            }
            else
            { 
                string email = TextBox2.Text;
                Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
                Match match = regex.Match(email);

                if (match.Success)
                {
                    sendcode();
                    savename();
                    Response.Redirect("checkemail.aspx");
                }
                else
                    Label1.Text = email + " is Invalid Email Address";

            }
        }
        private void savename()
        {
            String query = "insert into Users (Username) values ('" + TextBox1.Text + "')";
            String mycon = "Data Source=DESKTOP-PGDUMD5;Initial Catalog=details;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            {




                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
        }
        private void sendcode()
        {
            try
            {
                Random random = new Random();
                string userId = random.Next(1001, 9999).ToString(); 
             
                string verifyUrl = "http://localhost:50258/setpassword.aspx?id= " + userId.ToString();
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

                string toaddress = TextBox2.Text;
                msg.To.Add(toaddress);



                msg.Subject = "Activation link to Verify Email Address";

                msg.IsBodyHtml = true;
                string link = "Dear " + TextBox1.Text + ",Please click on the given link to verify your" +
                " account " + verifyUrl+
                "br>" +
                "Regards <br> Power Engineers";

                msg.Body = link;

                smtp.Send(msg);

            }
            catch (Exception ex)
            {

            }


        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-PGDUMD5;Initial Catalog=details;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            String myquery = "Select * from Users where Email='" + TextBox2.Text + "'";
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
