# config valid only for current version of Capistrano
lock '3.4.0'

set :rvm_type, :user 
set :rvm_ruby_version, '2.2.2'

set :application, 'rb-prop'
set :deploy_to, "/home/ubuntu/#{fetch(:application)}"
set :scm, :git
set :repo_url, 'git@github.com:Ignaciopalma/rb-prop.git'
set :branch, 'master'

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

set :keep_releases, 4
