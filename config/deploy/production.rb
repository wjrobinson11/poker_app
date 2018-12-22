role :app, %w{deploy_user@34.207.213.81}
role :web, %w{deploy_user@34.207.213.81}
role :db,  %w{deploy_user@34.207.213.81}
set :ssh_options, {
   keys: %w(/Users/it/.ssh/poker-app.pem),
   forward_agent: false,
   auth_methods: %w(publickey password)
}