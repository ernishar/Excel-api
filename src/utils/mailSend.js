const nodemailer = require("nodemailer");

const MailSender = (name, email, rowsInserted, callback) => {
  const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: process.env.EMAIL,
      pass: process.env.PASSWORD,
    },
  });

  console.log(process.env.EMAIL);
  console.log(process.env.PASSWORD);

  let emailContent = `
    <html>
      <head>
      </head>
      <body>
        <table width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse: collapse;">
          <tr>
            <td align="center" style="background-color: #ffffff; padding: 20px;">
              <h1 style="color: #2c3e50; font-family: Arial, sans-serif; font-size: 24px; font-weight: bold; margin-top: 20px;">
                Hello ${name}!
              </h1>
              <p style="color: #2c3e50; font-family: Arial, sans-serif; font-size: 16px; margin-top: 20px;">
                ${rowsInserted} rows were successfully inserted.
              </p>
              <div style="margin-top: 20px; text-align: center;">
                <span style="color: #2c3e50; font-family: Arial, sans-serif; font-size: 14px;">
                  Made with <span class="heart">❤</span> by Nishar Alam
                </span>
              </div>
            </td>
          </tr>
        </table>
      </body>
    </html>
  `;

  const mailOptions = {
    from: "Nishar",
    to: email,
    subject: `Data Insertion Report for ${name}`,
    html: emailContent,
  };

  transporter.sendMail(mailOptions, (error) => {
    if (error) {
      console.error("Error sending email:", error);
      callback(error);
    } else {
      console.log("Email sent");
      callback(null);
    }
  });
};

module.exports = MailSender;
