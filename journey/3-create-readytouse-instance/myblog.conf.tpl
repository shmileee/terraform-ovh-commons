<IfModule mod_ssl.c>
      <VirtualHost 0.0.0.0:80>
              ServerName ${server_name}
              DocumentRoot /home/ubuntu/myblog
      
              <Directory /home/ubuntu/myblog>
                  Options FollowSymLinks
                  AllowOverride Limit Options FileInfo
                  DirectoryIndex index.html
                  Require all granted
              </Directory>
      
              ErrorLog /var/log/apache2/error.log
              CustomLog /var/log/apache2/access.log combined
      </VirtualHost>
</IfModule>
