if node[:php]
  
  # With bash
  bash "insert_line" do
    user "root"
    code <<-EOS
    sed -i "s/;zend_extension=xdebug.so/zend_extension=xdebug.so/" /etc/php5/apache2/conf.d/20-xdebug.ini
    sed -i "s/zend_extension=xdebug.so/;zend_extension=xdebug.so/" /etc/php5/apache2/conf.d/20-xdebug.ini
    EOS
  end
  
end