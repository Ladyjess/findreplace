require 'sinatra'
require 'sinatra/reloader'
also_reload '.lib/**/*.rb'
require 'pry'
require './lib/find_replace.rb'

get '/' do
  erb :index
end

get '/form' do
  erb :form
end

post '/form' do
  @sentence = params.fetch("sentence")
  @word_to_replace = params.fetch("word_to_replace")
  @new_word = params.fetch("new_word")
  @new_paragraph = params.fetch("sentence").find_replace(@word_to_replace, @new_word)
  erb :form
end
