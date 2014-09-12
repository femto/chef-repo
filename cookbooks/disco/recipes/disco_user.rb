group 'disco' do
  gid 15001
  action :create
end

user 'disco' do
  supports :manage_home => true
  comment 'Disco User'
  uid 15001
  gid 15001
  home '/home/disco'
  shell '/bin/bash'
end

directory '/home/disco/.ssh' do
  owner 'disco'
  group 'disco'
  action :create
end

# cookbook_file '/home/disco/.ssh/authorized_keys' do
#   source 'disco_key.pub'
#   owner 'disco'
#   group 'disco'
#   action :create_if_missing
#   mode '0600'
# end