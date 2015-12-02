bash "custom_php-ini_settings" do
  user "root"
  code <<-EOS
    sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
    sed -i "s/max_input_time = 60/max_input_time = 600/" /etc/php5/apache2/php.ini
    sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 100M/" /etc/php5/apache2/php.ini
    sed -i "s/post_max_size = 8M/post_max_size = 100M/" /etc/php5/apache2/php.ini
    sed -i "s/date.timezone = /date.timezone = Europe/London/" /etc/php5/apache2/php.ini
  EOS
end