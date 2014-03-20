# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "fz2160"
client_key               "#{current_dir}/fz2160.pem"
validation_client_name   "take_a_taste-validator"
validation_key           "#{current_dir}/take_a_taste-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/take_a_taste"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
