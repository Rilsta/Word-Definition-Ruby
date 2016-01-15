require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('./lib/**/*.rb')

get('/') do
  @new_words = Word.all()
  erb(:index)
end

post('/') do
  name = params.fetch('word_name')
  new_word = Word.new(name)
  new_word.save()
  erb(:success)
end
