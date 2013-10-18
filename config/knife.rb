cookbook_copyright "Michal Stusio"
cookbook_email "stusiek88@gmail.com"
log_level                :info
log_location             STDOUT
node_name                'michal'
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path [ '/home/michal/sysadmin/cookbooks', '/home/michal/sysadmin/site-cookbooks' ]
