#!/bin/bash
ssh -t ubuntu@172.31.22.182 <<EOF 
sudo su -
cd /var/www/html/
pm2 status
pm2 delete react-site
pm2 status
rm -rf react_notes_app
git clone https://github.com/SakshiDhiman/react_notes_app.git -b $1
cd react_notes_app
pwd
npm install
npm run build
pm2 start npm --name "react-site" -- start "--port 3000"
pm2 startup
EOF
