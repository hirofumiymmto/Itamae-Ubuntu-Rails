RBENV_PATH = %(export PATH="$HOME/.rbenv/bin:$PATH")
execute "ubuntu update" do
  command "sudo apt-get -y update"
  command "sudo apt-get -y upgrade"
  command "sudo apt-get -y dist-upgrade"
end
execute "install packages required for rbenv" do
  command "sudo apt-get -y install git build-essential libssl-dev"
end
execute "rbenv install" do
  not_if "ls ~/.rbenv"
  command "git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build"
end
execute "chown rbenv" do
  command "chown -R ubuntu:ubuntu ~/.rbenv"
end
execute "update .profile for rbenv" do
  not_if %(#{RBENV_PATH} && rbenv --help)
  command %(sudo echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile && sudo echo 'eval "$(rbenv init -)"' >> ~/.profile)
end
execute "reload .profile for rbenv" do
  command ". ~/.profile"
end
execute "install packages required for ruby" do
  command "sudo apt-get install -y libreadline-dev"
end
execute "install ruby" do
  command "#{RBENV_PATH} && rbenv install -s 2.3.3"
end
execute "apply rbenv specific version" do
  command "#{RBENV_PATH} && rbenv global 2.3.3"
end
execute "install bundler" do
  command "#{RBENV_PATH} && rbenv exec gem install bundler"
end