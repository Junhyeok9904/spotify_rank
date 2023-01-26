# config/initializers/omniauth.rb

require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "2d70886f50b842fe89b20283be385c71", "a60d80a5fdea447eaafa996c28a385a3", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify user-top-read user-read-recently-played'
end

OmniAuth.config.allowed_request_methods = [:post, :get]