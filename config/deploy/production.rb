set :stage, :production
set :user, 'wwwbrandymint'
set :rails_env, :production
set :branch, ENV['BRANCH'] || 'master'
fetch(:default_env).merge!(rails_env: :production)
server 'zagorod21.ru', user: fetch(:user), roles: %w{web app db}
