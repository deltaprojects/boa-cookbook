use_inline_resources

action :install do
  # install boa.
  package 'boa'

  # enable and start boa service.
  service 'boa' do
    supports :status => false, :restart => true, :reload => false
    action [:start, :enable]
  end

  directory '/var/spool/boa/dircache' do
    owner new_resource.user
    group new_resource.user
    mode '0755'
    action :create
    recursive true
  end
  
  # create config file.
  template "/etc/boa/boa.conf" do
    cookbook 'boa'
    source 'boa.conf.erb'
    variables(
      :docroot => new_resource.docroot,
      :port => new_resource.port,
      :user => new_resource.user,
      :group => new_resource.group
    )
    action :create
    notifies :restart, 'service[boa]', :delayed
  end

end # end action: install
