source 'https://supermarket.chef.io'

metadata

cookbook 'cwlogs', git: 'git@bitbucket.org:interativeinvestor/opsworks-cloudwatch-logs.git'

group :integration do
  cookbook 'apt'
  cookbook 'yum'
  cookbook 'fake', :path => 'test/fixtures/cookbooks/fake'
  cookbook 'wrapper', :path => 'test/fixtures/cookbooks/wrapper'
end
