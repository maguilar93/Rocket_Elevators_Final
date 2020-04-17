Recaptcha.configure do |config|
  config.site_key   = Rails.application.config_for(:application)
  config.secret_key = Rails.application.config_for(:application)
end