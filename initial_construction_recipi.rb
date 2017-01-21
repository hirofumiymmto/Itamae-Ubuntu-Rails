execute "ubuntu update" do
  command "sudo apt-get -y update"
  command "sudo apt-get -y upgrade"
end
execute "install nginx" do
  command "sudo apt-get -y install nginx"
end