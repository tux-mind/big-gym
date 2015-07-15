key = ENV.fetch('FB_APP_ID')
secret = ENV.fetch('FB_APP_SECRET')

Api::FB_CLIENT = Koala::Facebook::API.new(key + '|' + secret)