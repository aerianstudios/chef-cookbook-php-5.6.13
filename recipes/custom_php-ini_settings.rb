bash "custom_php-ini_settings_short_open_tag" do
  user "root"
  code <<-EOS
    sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
  EOS
end

bash "custom_php-ini_settings_max_input_time" do
  user "root"
  code <<-EOS
    sed -i "s/max_input_time = 60/max_input_time = 600/" /etc/php5/apache2/php.ini
  EOS
end

bash "custom_php-ini_settings_post_max_size" do
  user "root"
  code <<-EOS
    sed -i "s/post_max_size = 8M/post_max_size = 100M/" /etc/php5/apache2/php.ini
  EOS
end

bash "custom_php-ini_settings_timezone" do
  user "root"
  code <<-EOS
    sed -i "s/;date.timezone =/date.timezone = Europe\/London/" /etc/php5/apache2/php.ini
  EOS
end

bash "custom_php-ini_settings_upload_max_filesize" do
  user "root"
  code <<-EOS
    sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 100M/" /etc/php5/apache2/php.ini
  EOS
end