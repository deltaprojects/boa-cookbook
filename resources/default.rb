actions :install
default_action :install

attribute :docroot, :kind_of => String, :name_attribute => true
attribute :port, :kind_of => Integer, :required => false, :default => 80
attribute :user, :kind_of => String, :required => false, :default => 'www-data'
attribute :group, :kind_of => String, :required => false, :default => 'www-data'

def initialize(*args)
  super
  #@run_context.include_recipe "boa::default"
  @action = :install
end
