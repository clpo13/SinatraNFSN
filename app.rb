require 'sinatra'

get '/' do
  ver = Sinatra::VERSION
  "Hello, world! This is Sinatra #{ver}."
end
