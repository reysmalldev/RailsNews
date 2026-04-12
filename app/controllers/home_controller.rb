require "net/http"
require "json"

class HomeController < ApplicationController
  def index
    api_client = CurrentsApiService.new

    @categories = CurrentsApiService::CATEGORIES
    @selected_category = params[:category]

    @languages = CurrentsApiService::LANGUAGES
    @selected_languages = params[:language]

    @news = api_client.latest_news(
      category: @selected_category,
      language: @selected_languages
      )["news"]
  end
end
