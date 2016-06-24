
working_directory "/home/ubuntu/Iprop"


# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "/home/ubuntu/Iprop/tmp/sockets/unicorn.sock", :backlog => 64

# Logging
stderr_path "/home/ubuntu/Iprop/log/unicorn.stderr.log"
stdout_path "/home/ubuntu/Iprop/log/unicorn.stdout.log"

# Set master PID location
pid "/home/ubuntu/Iprop/tmp/pids/unicorn.pid"