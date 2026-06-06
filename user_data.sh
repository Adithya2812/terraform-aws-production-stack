#!/bin/bash

apt update -y
apt install nginx -y

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Terraform AWS Production Stack</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1f1c2c, #928dab);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background: rgba(255,255,255,0.1);
            padding: 50px;
            border-radius: 20px;
            backdrop-filter: blur(10px);
        }

        h2 {
            color: #00ffcc;
        }

        .badge {
            display: inline-block;
            padding: 10px 20px;
            background: #00ffcc;
            color: black;
            border-radius: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Project 2 Successfully Deployed!</h1>

        <h2>Terraform + AWS + Nginx</h2>

        <p>Infrastructure deployed completely using Terraform</p>

        <p>EC2 | VPC | Security Groups | Route Tables | Nginx</p>

        <div class="badge">
            Built by Adithya
        </div>
    </div>
</body>
</html>
EOF

systemctl enable nginx
systemctl restart nginx