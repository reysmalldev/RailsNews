class HomeController < ApplicationController
  def index
    api_service = CurrentsApiService.new

    @noticias = api_service.latest_news['news']
  end
end
