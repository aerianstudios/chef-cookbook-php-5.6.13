bash "enable_mycrypt" do
  user "root"
  code <<-EOS
    php5enmod mcrypt
  EOS
end