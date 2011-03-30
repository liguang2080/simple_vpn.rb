require 'rubygems'
require "base64"
require 'sinatra'
require "httparty"
set :environment, :production
set :port, 80

get '/:url' do
  HTTParty.get(Base64.decode64(params[:url]))
end
