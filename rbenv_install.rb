REROAD_PROFILE = ". ~/.profile"
execute "ubuntu update" do
  command "apt-get -y update"
end

package 'build-essential'

execute "rbenv install" do
  not_if "ls ~/.rbenv"
  command "git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build"
end
execute "update .profile for rbenv" do
  not_if %(#{REROAD_PROFILE} && rbenv --help)
  command %(echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile && echo 'eval "$(rbenv init -)"' >> ~/.profile)
end