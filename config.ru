require 'dashing'

configure do
  set :auth_token, 'EM1NgaVgK3gmoPnTug-v'

  helpers do
    def protected!
      # Put any authentication code you want in here.
      # This method is run before accessing any resource.
       # authorization_token = 'EM1NgaVgK3gmoPnTug-v'
       # pagerduty_conn = Faraday.new(url: 'https://cnvrdops.pagerduty.com') do |conn|
       #   conn.headers['Authorization'] = "Token token=#{authorization_token}"
       #   conn.headers['Accept'] = 'application/vnd.pagerduty+json;version=1'
       #   conn.adapter :net_http
       # end
       # pagerduty_conn.get '/users'
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
