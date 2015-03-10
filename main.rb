require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

get "/" do
  erb :homepage, :layout => :boilerplate
end

get "/calc" do
  erb :calc, :layout => :boilerplate
end

get "/result" do
  @result = (params[:price].to_f / params[:gallons].to_f).round(2)
  erb :result, :layout => :boilerplate
end