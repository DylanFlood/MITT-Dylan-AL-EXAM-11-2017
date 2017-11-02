package 'ssh' do
	action :install
end

ssh_authorized_keys "root" do
  home "/root"
  ssh_keys node[:ssh][:root_authorized_keys]
end

ssh_config "AllowGroups" do
  string "AllowGroups #{node[:ssh][:sshusers].join(' ')}"
  only_if { node[:ssh][:sshusers].any? }
end
