require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_form/new') do
  erb(:word_form)
end

post('/word_list') do
  new_word = params.fetch('new_word')
  Word.new(new_word).save()
  
end
