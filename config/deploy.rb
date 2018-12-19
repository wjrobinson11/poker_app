set :application, "poker_app"
set :repo_url, "git@github.com:wjrobinson11/poker_app.git"
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')
set :rvm_ruby_version, '2.3.1'
set :passenger_restart_with_touch, true