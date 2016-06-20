require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/shop.rb'
require 'mechanize'



get '/' do
  @shops = Shop.where("id < ?", 10)
  erb :index
end







# 管理者ページ　スクレイピング更新
get '/admin' do
  erb :admin
end

post '/scrape' do
  # tset.rb を実行
  redirect '/'
end