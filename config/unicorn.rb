
working_directory "/home/deploy/Iprop"


# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "/home/deploy/Iprop/tmp/sockets/unicorn.sock", :backlog => 64

# Logging
stderr_path "/home/deploy/Iprop/log/unicorn.stderr.log"
stdout_path "/home/deploy/Iprop/log/unicorn.stdout.log"

# Set master PID location
pid "/home/deploy/Iprop/tmp/pids/unicorn.pid"