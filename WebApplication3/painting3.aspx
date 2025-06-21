<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="painting3.aspx.cs" Inherits="WebApplication3.painting4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic Fusion - Art Collection</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f5f6;
            color: #333;
            line-height: 1.6;
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
            padding: 20px 0;
            border-bottom: 1px solid #ddd;
            margin-bottom: 30px;
        }
        
        h1 {
            color: #b9375e;
            margin-bottom: 5px;
        }
        
        .artwork-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 40px;
        }
        
        .image-container {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 10px;
            background-color: white;
            margin-bottom: 25px;
            border-radius: 5px;
            max-width: 100%;
        }
        
        .image-container img {
            max-width: 100%;
            height: auto;
            display: block;
            border-radius: 3px;
        }
        
        .description {
            background-color: white;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 25px;
            border-radius: 5px;
            max-width: 800px;
            text-align: center;
            font-size: 18px;
            line-height: 1.8;
        }
        
        .btn-book {
            background-color: #b9375e;
            color: white;
            border: none;
            padding: 14px 30px;
            font-size: 18px;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .btn-book:hover {
            background-color: #95294a;
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        
        .btn-book:active {
            transform: translateY(0);
        }
        
        .artwork-details {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
            margin-top: 40px;
        }
        
        .detail-box {
            background-color: white;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            flex: 1;
            min-width: 200px;
            text-align: center;
        }
        
        .detail-box h3 {
            color: #b9375e;
            margin-top: 0;
        }
        
        footer {
            text-align: center;
            padding: 20px 0;
            margin-top: 40px;
            border-top: 1px solid #ddd;
            color: #666;
            font-size: 14px;
        }
        
        .navigation {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
            gap: 15px;
        }
        
        .nav-link {
            margin: 0 10px;
            color: #b9375e;
            text-decoration: none;
            transition: all 0.3s ease;
            padding: 8px 15px;
            background-color: #f7f0f3;
            border-radius: 20px;
        }
        
        .nav-link:hover {
            background-color: #f2e4e8;
            color: #95294a;
        }
        
        .technique-section {
            display: flex;
            justify-content: center;
            margin-top: 30px;
            max-width: 800px;
        }
        
        .technique-box {
            flex: 1;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin: 0 10px;
            border-radius: 5px;
            text-align: center;
        }
        
        .technique-box h3 {
            color: #b9375e;
            margin-top: 0;
        }
        
        @media (max-width: 768px) {
            .description {
                padding: 15px;
                font-size: 16px;
            }
            
            .btn-book {
                padding: 12px 25px;
                font-size: 16px;
            }
            
            .technique-section {
                flex-direction: column;
            }
            
            .technique-box {
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <h1>Dynamic Fusion</h1>
                <p>From our Contemporary Expressions Collection</p>
            </header>
            
            <div class="artwork-container">
                <div class="image-container">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/pic 4.jpg" AlternateText="Dynamic Fusion abstract painting" />
                </div>
                
                <div class="description">
                    <asp:Label ID="Label1" runat="server" Text="An energetic abstract composition bursting with vivid color and dynamic textures. Splashes of red, yellow, and subtle darker tones intertwine with drips and lines, creating a sense of spontaneous movement and raw artistic expression. The painting captures the essence of emotional freedom and artistic abandon, inviting viewers to experience the pure joy of color and form without the constraints of representational art."></asp:Label>
                </div>
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book This Artwork" CssClass="btn-book" />
                
                
                
               
                
                <div class="navigation">
                    
                    <a href="WebForm1.aspx" class="nav-link">Return to Gallery</a>
                </div>
            </div>
        </div>
        
        
    </form>
</body>
</html>