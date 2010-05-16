require 'rubygems'
require 'sinatra'
require "httparty"
require "lib/simple_crypt"

set :environment, :production

get '/:url' do
  HTTParty.get(params[:url].s_decry)
end