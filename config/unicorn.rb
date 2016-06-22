application = "indeco"
 
worker_processes = 2
working_directory "/opt/app/#{application}"
 
listen "/var/run/unicorn/unicorn_#{application}.sock"
pid "/var/run/unicorn/unicorn_#{application}.pid"

stderr_path "/opt/app/#{application}/log/unicorn.stderr.log"
stdout_path "/opt/app/#{application}/log/unicorn.stdout.log"
 
preload_app true
