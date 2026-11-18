#!/bin/bash
set -e

cd /var/www/myapp

cat > /etc/systemd/system/myapp.service <<'EOF'
[Unit]
Description=Flask Application
After=network.target

[Service]
User=root
WorkingDirectory=/var/www/myapp
ExecStart=/var/www/myapp/venv/bin/python app.py
Restart=always

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable myapp
systemctl restart myapp

echo "Application started"