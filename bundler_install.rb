REROAD_PROFILE = ". ~/.profile"
execute "install bundler" do		
  command "#{REROAD_PROFILE} && rbenv exec gem install bundler"		
end
