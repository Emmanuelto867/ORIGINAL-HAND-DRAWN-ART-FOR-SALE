<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="WebApplication3.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - Contemporary Art Gallery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            line-height: 1.8;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        
        header {
            text-align: center;
            padding: 20px 0 30px;
            border-bottom: 1px solid #ddd;
            margin-bottom: 40px;
        }
        
        h1 {
            color: #333;
            margin-bottom: 10px;
            font-size: 2.5rem;
            font-weight: 300;
            letter-spacing: 1px;
        }
        
        .subtitle {
            color: #666;
            font-size: 1.2rem;
            font-weight: 300;
            margin-bottom: 0;
        }
        
        .contact-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            margin-bottom: 60px;
        }
        
        .contact-info {
            flex: 1;
            min-width: 300px;
            background-color: white;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
        }
        
        .contact-form {
            flex: 1;
            min-width: 300px;
            background-color: white;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
        }
        
        .welcome-message {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 30px;
            color: #555;
            text-align: center;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
        }
        
        .info-section {
            margin-bottom: 25px;
        }
        
        .info-section h3 {
            color: #8b0000;
            margin-top: 0;
            margin-bottom: 15px;
            font-size: 20px;
            font-weight: 500;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }
        
        .info-section p {
            margin: 8px 0;
            font-size: 16px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        
        .form-control:focus {
            border-color: #8b0000;
            outline: none;
        }
        
        textarea.form-control {
            height: 120px;
            resize: vertical;
        }
        
        .btn-submit {
            background-color: #8b0000;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 17px;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            display: block;
            margin-top: 10px;
        }
        
        .btn-submit:hover {
            background-color: #6d0000;
            transform: translateY(-2px);
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 15px;
        }
        
        .social-icon {
            background-color: #f0f0f0;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .social-icon:hover {
            background-color: #8b0000;
            color: white;
            transform: translateY(-3px);
        }
        
        .map-container {
            margin-top: 40px;
            height: 400px;
            width: 100%;
            background-color: #f0f0f0;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
        }
        
        .map-container iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
        
        .contact-title {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .contact-title h2 {
            font-weight: 300;
            font-size: 2rem;
            color: #333;
            margin-bottom: 10px;
        }
        
        .contact-title p {
            color: #666;
        }
        
        .divider {
            height: 1px;
            background-color: #eee;
            margin: 40px 0;
        }
        
        footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 40px;
            border-top: 1px solid #ddd;
            color: #666;
            font-size: 14px;
        }
        
        .home-link {
            margin-top: 30px;
            text-align: center;
        }
        
        .home-button {
            display: inline-block;
            background-color: #333;
            color: white;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 30px;
            font-size: 16px;
            transition: all 0.3s ease;
        }
        
        .home-button:hover {
            background-color: #555;
            transform: translateY(-2px);
        }
        
        @media (max-width: 768px) {
            .contact-wrapper {
                flex-direction: column;
                gap: 30px;
            }
            
            .contact-info, .contact-form {
                padding: 25px;
            }
            
            .map-container {
                height: 300px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <h1>CONTACT US</h1>
                <p class="subtitle">We'd love to hear from you</p>
            </header>
            
            <div class="welcome-message">
                <asp:Label ID="Label1" runat="server" Text="We'd love to hear from you! Whether you have a question about an artwork, need assistance with a private viewing, or wish to inquire about exhibiting, please don't hesitate to reach out."></asp:Label>
            </div>
            
            <div class="contact-wrapper">
                <div class="contact-info">
                    <div class="info-section">
                        <h3>Gallery Location</h3>
                        <p><strong>CONTEMPORARY ART Gallery</strong></p>
                        <p><asp:Label ID="Label3" runat="server" Text="Greater Sudbury, ON P3E 2C4, Canada"></asp:Label></p>
                    </div>
                    
                    <div class="info-section">
                        <h3>Contact Information</h3>
                        <p><i class="fas fa-phone-alt"></i> <asp:Label ID="Label4" runat="server" Text="Phone Number: 98765412354"></asp:Label></p>
                        <p><i class="fas fa-envelope"></i> <asp:Label ID="Label5" runat="server" Text="Email Address: xyz@myartgallery.com"></asp:Label></p>
                    </div>
                    
                    <div class="info-section">
                        <h3>Gallery Hours</h3>
                        <p><asp:Label ID="Label7" runat="server" Text="Monday - Friday: 10AM to 6PM"></asp:Label></p>
                        <p><asp:Label ID="Label8" runat="server" Text="Closed on Saturdays, Sundays and Public Holidays"></asp:Label></p>
                    </div>
                    
                    <div class="info-section">
                        <h3>Connect With Us</h3>
                        <p><asp:Label ID="Label9" runat="server" Text="Follow Us on Social Media:"></asp:Label></p>
                        <div class="social-links">
                            
                            <a href="#" class="social-icon" title="Instagram"><i class="fab fa-instagram"></i></a>
                            
                        </div>
                        <p style="margin-top: 10px;">@<asp:Label ID="Label10" runat="server" Text="Myartgallery"></asp:Label></p>
                    </div>
                </div>
                
               
            </div>
            
          
        </div>
        
       
    </form>
</body>
</html>