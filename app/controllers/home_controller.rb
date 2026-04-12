require 'net/http'
require 'json'

class HomeController < ApplicationController
  def index
    api_client = CurrentsApiService.new
    @news = api_client.latest_news 
  end
end
