source 'https://supermarket.chef.io'

metadata

cookbook 'chef-cwlogs', git: 'ssh://git@github.com:MikeSchuette/chef-cwlogs.git'

group :integration do
  cookbook 'apt'
  cookbook 'yum'
  cookbook 'fake', :path => 'test/fixtures/cookbooks/fake'
  cookbook 'wrapper', :path => 'test/fixtures/cookbooks/wrapper'
end
