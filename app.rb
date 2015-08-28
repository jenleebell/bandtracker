require("bundler/setup")
require('pry')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/bands') do
  @bands = Band.all()
  erb(:bands)
end

get('/band/new') do
  erb(:band_form)
end

post('/bands') do
  name = params.fetch('name')
  band = Band.create({:name => name})
  redirect('/bands')
end
