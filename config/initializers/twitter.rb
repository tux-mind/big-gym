Api::TW_CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV.fetch('TW_API_CONSUMER_KEY')
  config.consumer_secret = ENV.fetch('TW_API_CONSUMER_SECRET')
end