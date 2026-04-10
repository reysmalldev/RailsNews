class NewsController < ApplicationController
  def index
    service = CurrentsApiService.new
    @news = service.latest_news
  end
end
