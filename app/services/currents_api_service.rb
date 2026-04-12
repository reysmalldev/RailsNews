class CurrentsApiService
  include HTTParty
  base_uri "https://api.currentsapi.services/v2"

  CATEGORIES = %w[
    general
    society
    science_technology
    politics_government
    economy_business_finance
    arts_culture_entertainment
    lifestyle_leisure
    human_interest
    sport
    crime_law_justice
    education
    environment
    labour
    health
    automotive
    real_estate
  ].freeze

  def latest_news(category: nil)
    params = {}
    params[:category] = category if category.present?

    self.class.get("/latest-news", 
      headers: { "Authorization" => Rails.application.credentials.dig(:currents_api, :key)},
      query: params
    )
  end
end
