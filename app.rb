require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/ping_pong')
require('pry')

get('/') do
  erb(:home)
end
