require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'json'

get '/' do
  slim :home
end

