@dir = "/path/to/app/"

worker_processes 2 # CPUのコア数に揃える
working_directory @dir

timeout 300
listen 80

pid "#{@dir}tmp/pids/unicorn.pid" #pidを保存するファイル

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"1}}}
