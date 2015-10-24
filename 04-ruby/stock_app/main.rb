require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do

  @last_trade = ''

  if !params[:ticker].nil? && !params[:ticker].empty?
    data = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:ticker])
    @last_trade = data[params[:ticker]].lastTrade
  end

  erb :index
end

