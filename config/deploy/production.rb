set :application, 'mramirol_production'
set :stage, :production
set :rails_env, :production
set :deploy_to, '/home/deploy/mramirol_production'
set :release_note_url, 'http://mramirol.com/release_note.txt'

server '52.74.25.193', user: 'deploy', roles: %w{web app db job}
