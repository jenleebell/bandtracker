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

post('/bands') do
  @band = Band.create({:name => params.fetch('name')})
  redirect('/bands')
end

get('/band/new') do
  erb(:band_form)
end

get('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  erb(:band)
end

get('/band/:id/edit') do
  @band = Band.find(params.fetch("id").to_i())
  erb(:band_edit)
end

# patch('band/:id') do
#   @band = Band.find(params.fetch("id").to_i())
#   @band.update({:name => params.fetch('name')})
#   redirect('/band/#{@band.id()}')
# end

delete('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete
  redirect('/bands')
end
