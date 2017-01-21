execute "ubuntu update" do
  command "sudo apt-get -y update"
  command "sudo apt-get -y upgrade"
end