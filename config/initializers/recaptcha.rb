Recaptcha.configure do |config|
  config.site_key   = Rails.application.config_for(:recaptcha_site_key)
  config.secret_key = Rails.application.config_for(:recaptcha_secret_key)
end