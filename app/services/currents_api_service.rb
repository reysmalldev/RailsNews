class CurrentsApiService
  include HTTParty
  base_uri "https://api.currentsapi.services/v2"

  def latest_news
    self.class.get("/latest-news", headers: {
      "Authorization" => Rails.application.credentials.dig(:currents_api, :key)
    })
  end
end
