<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="WebApplication3.loginpage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Your App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            margin: 1rem;
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-header h2 {
            color: #333;
            font-weight: 300;
            font-size: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
            font-weight: 500;
            text-transform: capitalize;
        }

        .form-input {
            width: 100%;
            padding: 0.75rem;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        .form-input:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .login-button {
            width: 100%;
            padding: 0.75rem;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .login-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
        }

        .login-button:active {
            transform: translateY(0);
        }

        .password-input {
            position: relative;
        }

        @media (max-width: 480px) {
            .login-container {
                padding: 1.5rem;
                margin: 0.5rem;
            }
            
            .login-header h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-header">
                <h2>Welcome Back</h2>
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Username" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input" placeholder="Enter your username"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-input" placeholder="Enter your password"></asp:TextBox>
            </div>
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" CssClass="login-button" />
        </div>
    </form>
</body>
</html>