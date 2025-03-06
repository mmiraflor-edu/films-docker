server {
        listen 80;
        server_name peliculas.com;
        
        root /var/www/html/frontend/public_html;
        
        index pages/home.html;
        
        location / {
                try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
                include fastcgi_params;
                fastcgi_pass unix:/run/php/php8.2-fpm.sock;
                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        }
}