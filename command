Apache 2 Sunucusunu kurmak istiyorsanız aşağıdaki kodları kullanabilirsiniz. 
#sudo apt-get install apache2


apache2: “ Could not determine the server's fully qualified domain name, using 127.0.0.1 for ServerName 
şeklinde hata iletisi alıyorsanız komut satırından "sudo nano" ya da çalıştır menüsünden "gksudo gedit" ile yeni bir metin dosyası yaratmalısınız. 

"Nano" metin düzenleyici için 
#sudo nano /etc/apache2/conf.d/fqdn


Gedit metin düzenleyici için 
#gksu "gedit /etc/apache2/conf.d/fqdn


Dosyaya şu metni eklemelisiniz / Dosya yolu 
#/etc/apache2/conf.d/fqdn
ServerName localhost

Bunların tamamı tek bir komutla da yapılabilir 
#echo "ServerName localhost" | sudo tee /etc/apache2/conf.d/fqdn

Eğer SSL (HTTPS) olarak web sunucumuzun çalışmasını istiyorsanız şu komutla gerekli paketi kurabilirsiniz. 
#sudo a2enmod ssl 
#sudo service apache2 restart 
#sudo reboot
