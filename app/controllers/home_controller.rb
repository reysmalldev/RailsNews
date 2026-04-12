require "net/http"
require "json"

class HomeController < ApplicationController
  def index
    api_client = CurrentsApiService.new
    @categories = CurrentsApiService::CATEGORIES
    @selected_category = params[:category]
    
    @news = api_client.latest_news(category: @selected_category)["news"]
  end
end
