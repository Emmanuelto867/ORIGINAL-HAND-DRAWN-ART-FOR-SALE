<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication3.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contemporary Art Gallery - Welcome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
            margin-bottom: 30px;
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
        
        .gallery-image-container {
            width: 100%;
            height: 400px;
            overflow: hidden;
            margin-bottom: 40px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        
        .gallery-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.5s ease;
        }
        
        .gallery-image:hover {
            transform: scale(1.02);
        }
        
        .welcome-text {
            background-color: white;
            padding: 40px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border-radius: 5px;
            margin-bottom: 40px;
            line-height: 1.8;
        }
        
        .welcome-text p {
            margin-bottom: 25px;
            font-size: 18px;
            color: #444;
        }
        
        .welcome-text p:last-child {
            margin-bottom: 0;
        }
        
        .cta-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin: 40px 0;
        }
        
        .cta-button {
            display: inline-block;
            background-color: #333;
            color: white;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 30px;
            font-size: 18px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .cta-button:hover {
            background-color: #555;
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        
        .cta-button.primary {
            background-color: #8b0000;
        }
        
        .cta-button.primary:hover {
            background-color: #6d0000;
        }
        
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            margin-bottom: 50px;
        }
        
        .feature-box {
            flex: 1;
            min-width: 250px;
            background-color: white;
            padding: 25px;
            border-radius: 5px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
        }
        
        .feature-box h3 {
            color: #444;
            margin-top: 0;
        }
        
        footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 40px;
            border-top: 1px solid #ddd;
            color: #666;
            font-size: 14px;
        }
        
        @media (max-width: 768px) {
            .gallery-image-container {
                height: 300px;
            }
            
            .welcome-text {
                padding: 25px;
            }
            
            .welcome-text p {
                font-size: 16px;
            }
            
            .cta-button {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <h1>CONTEMPORARY ART GALLERY</h1>
                <p class="subtitle">Where Vision Meets Expression</p>
            </header>
            
            <div class="gallery-image-container">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/art gallery.jpg" CssClass="gallery-image" AlternateText="Contemporary Art Gallery Interior" />
            </div>
            
            <div class="welcome-text">
                <p>Welcome to our contemporary art gallery, a thoughtfully designed space dedicated to showcasing exceptional artwork. As you step inside, you'll discover a sophisticated atmosphere where art takes center stage. Our walls are painted in a refined deep grey, providing a neutral yet elegant backdrop that allows each piece to truly stand out.</p>
                
                <p>The gallery features a modern track lighting system, meticulously positioned to illuminate every artwork with precision, drawing your eye to the intricate details and emotional depth of each exhibit. The polished concrete floor reflects the light, creating a sense of spaciousness and adding to the sleek, minimalist aesthetic.</p>
                
                <p>Currently, our main exhibition highlights a compelling series of framed black and white photographs, arranged in a clean, uncluttered display that encourages contemplative viewing. The strategic placement of each photograph, both on the prominent left wall and extending into the depth of the gallery on the right, guides visitors through a curated visual journey.</p>
                
                <p>We invite you to explore our current exhibitions and immerse yourself in the world of art within our inspiring space.</p>
            </div>
            
            <div class="cta-container">
                <a href="WebForm1.aspx" class="cta-button primary">View Gallery</a>
                <a href="contactus.aspx" class="cta-button">Contact Us</a>
            </div>
            

        </div>
        
       
    </form>
</body>
</html>