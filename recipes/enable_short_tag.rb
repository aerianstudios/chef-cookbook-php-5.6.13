if node[:php]
  
  # With bash
  bash "insert_line" do
    user "root"
    code <<-EOS
    sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
    EOS
  end
  
end