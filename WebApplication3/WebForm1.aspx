<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            min-height: 100vh;
            color: #333;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            padding: 1rem 0;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            gap: 2rem;
            padding: 0 2rem;
        }

        .nav-button {
            padding: 12px 30px !important;
            border: none !important;
            background: linear-gradient(45deg, #667eea, #764ba2) !important;
            color: white !important;
            border-radius: 50px !important;
            font-size: 16px !important;
            font-weight: 500 !important;
            cursor: pointer !important;
            transition: all 0.3s ease !important;
            text-transform: uppercase !important;
            letter-spacing: 1px !important;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3) !important;
        }

        .nav-button:hover {
            transform: translateY(-3px) !important;
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4) !important;
            background: linear-gradient(45deg, #764ba2, #667eea) !important;
        }

        .nav-button:active {
            transform: translateY(-1px) !important;
        }

        .main-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 3rem 2rem;
        }

        .page-title {
            text-align: center;
            color: white;
            font-size: 3rem;
            font-weight: 300;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .page-subtitle {
            text-align: center;
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.2rem;
            margin-bottom: 3rem;
        }

        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .image-card {
            position: relative;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
            background: white;
        }

        .image-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .gallery-image {
            width: 100% !important;
            height: 250px !important;
            object-fit: cover !important;
            transition: all 0.3s ease !important;
            border: none !important;
            display: block !important;
            position: relative;
            z-index: 2; /* Makes sure button is on top */
        }

        .gallery-image:hover {
            transform: scale(1.1) !important;
        }

        .image-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, rgba(102, 126, 234, 0.8), rgba(118, 75, 162, 0.8));
            opacity: 0;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.2rem;
            font-weight: 500;
            z-index: 1; /* Below the button */
        }

        .image-card:hover .image-overlay {
            opacity: 1;
        }

        @media (max-width: 768px) {
            .nav-container {
                flex-direction: column;
                gap: 1rem;
                align-items: center;
            }

            .nav-button {
                width: 200px !important;
            }

            .page-title {
                font-size: 2rem;
            }

            .gallery-container {
                grid-template-columns: 1fr;
                gap: 1.5rem;
            }

            .main-content {
                padding: 2rem 1rem;
            }
        }

        @media (max-width: 480px) {
            .nav-container {
                padding: 0 1rem;
            }

            .page-title {
                font-size: 1.5rem;
            }

            .page-subtitle {
                font-size: 1rem;
            }
        }

        .image-card {
            animation: fadeInUp 0.6s ease forwards;
        }

        .image-card:nth-child(1) { animation-delay: 0.1s; }
        .image-card:nth-child(2) { animation-delay: 0.2s; }
        .image-card:nth-child(3) { animation-delay: 0.3s; }
        .image-card:nth-child(4) { animation-delay: 0.4s; }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .navbar::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            z-index: -1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <div class="navbar">
            <div class="nav-container">
                <asp:Button ID="Button1" runat="server" Text="Home" CssClass="nav-button" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Gallery" CssClass="nav-button" OnClick="Button2_Click" />
                <asp:Button ID="Button4" runat="server" Text="Contact Us" CssClass="nav-button" OnClick="Button4_Click" />
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <h1 class="page-title">Creative Gallery</h1>
            <p class="page-subtitle">Discover our stunning collection of images</p>

            <!-- Gallery Grid -->
            <div class="gallery-container">
                <div class="image-card">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/pic 3.jpg" OnClick="ImageButton1_Click" CssClass="gallery-image" />
                    <div class="image-overlay">
                        <span>View Details</span>
                    </div>
                </div>

                <div class="image-card">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/pic 5.jpg" OnClick="ImageButton2_Click" CssClass="gallery-image" />
                    <div class="image-overlay">
                        <span>View Details</span>
                    </div>
                </div>

                <div class="image-card">
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/pic 2.jpg" OnClick="ImageButton3_Click" CssClass="gallery-image" />
                    <div class="image-overlay">
                        <span>View Details</span>
                    </div>
                </div>

                <div class="image-card">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/image/pic 4.jpg" OnClick="ImageButton4_Click" CssClass="gallery-image" />
                    <div class="image-overlay">
                        <span>View Details</span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
