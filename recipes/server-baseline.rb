  GNU nano 2.5.3                                                    File: server-baseline.rb                                                                                                                

package 'jedit' do
        action :install
end

package 'git' do
        action :install
end

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end

