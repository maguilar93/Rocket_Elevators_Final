require 'zendesk_api'
def initialize
  @client = ZendeskAPI::Client.new do |config|
    # Mandatory:
    config.url = "https://rocketelevators1.zendesk.com/api/v2" # e.g. https://mydesk.zendesk.com/api/v2

    # Basic / Token Authentication
    config.username = ENV["ZENDESK_USERNAME"]

    # Choose one of the following depending on your authentication choice
    config.token = ENV["ZENDESK_TOKEN"]

    # Logger prints to STDERR by default, to e.g. print to stdout:
    require 'logger'
    config.logger = Logger.new(STDOUT)
  end
end