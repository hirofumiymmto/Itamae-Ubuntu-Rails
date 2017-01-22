execute "ubuntu update" do
  command "sudo apt-get -y update"
end
package 'build-essential'
package 'libssl-dev'
package 'libreadline-dev'
package 'git'
package 'nginx'
package 'ruby-dev'
package 'libsqlite3-dev'
gem_package 'sqlite3'
gem_package 'rails'