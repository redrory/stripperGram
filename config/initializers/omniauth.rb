Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, Rails.application.secrets.instagram_api_key, Rails.application.secrets.instagram_api_secret
end