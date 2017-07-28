# keys = Rails.application.secrets

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :spotify, keys.spotify['SPOTIFY_KEY'], keys.spotify['SPOTIFY_SECRET'], scope: 'playlist-read-private user-read-private user-read-email'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV['SPOTIFY_KEY'], ENV['SPOTIFY_SECRET']
end