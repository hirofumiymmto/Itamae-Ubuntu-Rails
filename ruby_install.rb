REROAD_PROFILE = ". ~/.profile"
RUBY_VERSION = "2.3.1"
execute "install ruby" do
  command "#{REROAD_PROFILE} && rbenv install -s #{RUBY_VERSION}"
end
execute "apply ruby specific version using rbenv" do
  command "#{REROAD_PROFILE} && rbenv global #{RUBY_VERSION}"
end
