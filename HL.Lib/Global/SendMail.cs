using System;
using System.Net.Mail;
using System.Net;

namespace HL.Lib.Global
{
    public class SendMail
    {
        public static void SendMailUseIIS(string to, string from, string name, string subject, string body)
        {
            MailMessage meg = new MailMessage();

            meg.To.Add(to);
            meg.Subject = subject;
            meg.IsBodyHtml = true;
            meg.BodyEncoding = System.Text.Encoding.UTF8;
            meg.From = new MailAddress(from, name);
            meg.Body = body;
            SmtpClient mailsender = new SmtpClient();
            mailsender.UseDefaultCredentials = false;
            mailsender.Host = "localhost";
            mailsender.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;

            mailsender.Send(meg);
        }

        public static int SendMailUseSMTP(string To, string Subject, string Content,string Attack)
        {
            int rs = 0;
            try
            {
            string provider = HL.Core.Global.Config.GetValue("Mod.SmtpServer").ToString();
            string from = HL.Core.Global.Config.GetValue("Mod.SmtpUser").ToString();
            string pass = HL.Core.Global.Config.GetValue("Mod.SmtpPass").ToString();
            int port = HL.Core.Global.Config.GetValue("Mod.SmtpPort").ToInt();
            bool ssl = HL.Core.Global.Config.GetValue("Mod.SmtpSSL").ToBool();
            //xac thuc tai khoan gmail
            NetworkCredential loginInfo = new NetworkCredential(from, pass);
            //tao noi dung mail
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(from);
            var arrTo = To.Split('|');
            if (arrTo != null&&arrTo.Length > 0)
            {
                for (int i = 0; i < arrTo.Length;i++ )
                    if(Utils.GetEmailAddress(arrTo[i])!=string.Empty)
                    mail.To.Add(new MailAddress(arrTo[i]));
            }
            else mail.To.Add(new MailAddress(To));
            mail.Subject = Subject;
            mail.Body = Content;
            mail.IsBodyHtml = true;
            //dinh kem
            if (!string.IsNullOrEmpty(Attack) && System.IO.File.Exists(Attack))
            {
                Attachment attachment;
                attachment = new System.Net.Mail.Attachment(Attack);
                mail.Attachments.Add(attachment);
            }
            //gui
            SmtpClient client = new SmtpClient(provider);
            client.Port = port;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = ssl;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(mail);

            rs = 1;
            }
            catch (Exception ex)
            {
                Error.Write(ex);
                rs = 0;
            }
            return rs;
        }
    }
}
