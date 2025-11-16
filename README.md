# Curtis Software Studio Website

A professional, modern corporate website built with Java/JSP, featuring a clean design, responsive layout, and secure contact form functionality.

## 🌟 Features

- **Modern, Elegant Design**: Beautiful UI with gradient colors, smooth animations, and professional typography
- **Responsive Layout**: Mobile-first design that works seamlessly on all devices
- **Dynamic Navigation**: Active page highlighting with smooth transitions
- **Secure Contact Form**: 
  - CSRF protection
  - Server-side validation
  - Real-time client-side validation
  - Email notifications via JavaMail API
  - XSS and injection attack prevention
- **Security Headers**: CSP, X-Frame-Options, XSS Protection, and more
- **SEO Optimized**: Proper meta tags, sitemap.xml, and robots.txt
- **Custom SVG Logo**: Scalable, professional branding

## 📋 Pages

1. **Home (index.jsp)** - Landing page with hero section and key features
2. **About (about.jsp)** - Company mission, vision, values, and expertise
3. **Services (services.jsp)** - Service offerings and portfolio showcase
4. **Contact (contact.jsp)** - Interactive contact form with validation

## 🛠️ Technology Stack

- **Backend**: Java Servlets, JSP 2.3
- **Frontend**: Bootstrap 5.3.3, Custom CSS, Vanilla JavaScript
- **Email**: JavaMail API
- **Fonts**: Google Fonts (Inter)
- **Icons**: Bootstrap Icons (inline SVG)

## 📦 Project Structure

```
curtis-software-studio-website/
├── assets/
│   └── logo.svg              # Company logo
├── WEB-INF/
│   ├── jspf/                 # JSP fragments (header, footer, navbar)
│   │   ├── _header.jspf
│   │   ├── _navbar.jspf
│   │   └── _footer.jspf
│   ├── src/
│   │   └── com/curtissoftware/
│   │       └── ContactServlet.java
│   └── web.xml               # Web application configuration
├── index.jsp
├── about.jsp
├── services.jsp
├── contact.jsp
├── robots.txt
├── sitemap.xml
├── README.md
└── .gitignore
```

## 🚀 Getting Started

### Prerequisites

- Java Development Kit (JDK) 8 or higher
- Apache Tomcat 9.0 or higher (or any Java EE compatible server)
- JavaMail API library (javax.mail.jar)

### Installation

1. **Clone or download this repository**

2. **Add JavaMail API library**
   - Download `javax.mail.jar` from [JavaMail on Maven](https://mvnrepository.com/artifact/com.sun.mail/javax.mail)
   - Place it in `WEB-INF/lib/` directory

3. **Configure Email Settings** (Optional)
   - Edit `WEB-INF/web.xml`
   - Uncomment and configure SMTP parameters:
   ```xml
   <context-param>
     <param-name>smtp.host</param-name>
     <param-value>smtp.gmail.com</param-value>
   </context-param>
   <!-- Add other parameters -->
   ```

4. **Deploy to Tomcat**
   - Copy the entire project folder to `TOMCAT_HOME/webapps/`
   - Or create a WAR file and deploy it
   - Restart Tomcat

5. **Access the website**
   - Navigate to `http://localhost:8080/curtis-software-studio-website/`

## 📧 Email Configuration

To enable email sending functionality:

1. **For Gmail:**
   - Enable 2-Factor Authentication
   - Generate an [App Password](https://myaccount.google.com/apppasswords)
   - Use the app password in `smtp.password`

2. **For Other SMTP Servers:**
   - Update `smtp.host` and `smtp.port` in `web.xml`
   - Provide appropriate credentials

3. **Without Email Configuration:**
   - Contact form submissions will be logged to console
   - Users will still receive confirmation messages

## 🔒 Security Features

- **CSRF Protection**: Token-based validation for form submissions
- **Input Validation**: Both client-side and server-side validation
- **XSS Prevention**: HTML escaping and input sanitization
- **Security Headers**: 
  - Content-Security-Policy
  - X-Frame-Options
  - X-Content-Type-Options
  - X-XSS-Protection
  - Referrer-Policy
- **Session Security**: HTTP-only cookies, secure session management

## 🎨 Customization

### Colors

Edit CSS custom properties in `WEB-INF/jspf/_header.jspf`:

```css
:root {
    --primary-color: #2563eb;
    --secondary-color: #8b5cf6;
    --gradient-start: #2563eb;
    --gradient-end: #7c3aed;
}
```

### Logo

Replace `assets/logo.svg` with your own logo (SVG recommended for scalability)

### Content

Edit the JSP files to customize:
- Company name
- Contact information
- Services and portfolio items
- About page content

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🧪 Testing

1. **Contact Form Validation**:
   - Test with empty fields
   - Test with invalid email
   - Test with special characters
   - Verify CSRF token validation

2. **Responsive Design**:
   - Test on mobile devices (320px - 768px)
   - Test on tablets (768px - 1024px)
   - Test on desktop (1024px+)

3. **Navigation**:
   - Verify active page highlighting
   - Test all internal links

## 🐛 Troubleshooting

### Email Not Sending

- Check SMTP credentials in `web.xml`
- Verify firewall/network allows SMTP connections
- Check Tomcat logs for detailed error messages
- For Gmail, ensure you're using an App Password

### Logo Not Displaying

- Verify `assets/logo.svg` exists
- Check file permissions
- Clear browser cache

### CSS Not Loading

- Ensure Bootstrap CDN is accessible
- Check for browser console errors
- Verify Content-Security-Policy headers

## 📄 License

This project is provided as-is for Curtis Software Studio. All rights reserved.

## 👨‍💻 Development

### Building from Source

```bash
# Compile Java files
javac -cp "path/to/servlet-api.jar:path/to/javax.mail.jar" \
  WEB-INF/src/com/curtissoftware/ContactServlet.java \
  -d WEB-INF/classes/

# Create WAR file
jar -cvf curtis-software-studio.war *
```

### Deployment Checklist

- [ ] Update contact information
- [ ] Configure SMTP settings
- [ ] Set `secure="true"` in session-config for HTTPS
- [ ] Update sitemap.xml with production URLs
- [ ] Test all forms and links
- [ ] Enable HTTPS/SSL
- [ ] Configure production database (if applicable)
- [ ] Set up backup strategy
- [ ] Configure logging

## 📞 Support

For issues or questions about this website, please contact:
- Email: info@curtissoftware.com
- Phone: (555) 123-4567

## 🔄 Version History

- **v1.0** (2025-11-15)
  - Initial release
  - Modern responsive design
  - Secure contact form
  - Email integration
  - Security hardening
  - SEO optimization

---

Built with ❤️ by Curtis Software Studio

