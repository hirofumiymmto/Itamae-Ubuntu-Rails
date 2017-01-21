execute "ubuntu update" do
  command "sudo apt-get -y update"
  command "sudo apt-get -y upgrade"
end
execute "install nginx" do
  command "sudo apt-get -y install nginx"
end
execute "rbenv install" do
  command "sudo apt-get -y install git build-essential libssl-dev"
  command "sudo apt-get -y install rbenv"
end