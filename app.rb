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
  @new_words = Word.all()
  erb(:success)
end

get('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end

post('/word/:id') do
  @word = Word.find(params.fetch("id").to_i())
  def_name = params.fetch('def_name')
  @new_def = Definition.new(def_name)
  @new_def.save()
  @word.definitions.push(@new_def)
  @new_defs = Definition.all()
  erb(:success)
end
