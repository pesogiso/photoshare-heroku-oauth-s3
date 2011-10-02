Rails.application.config.middleware.use OmniAuth::Builder do
    # twitter (https://dev.twitter.com/apps)
    provider :twitter, "Consumer key", "Consumer secret"
    # Facebook (https://www.facebook.com/developers/createapp.php)
    provider :facebook, "Application ID", "Application Secret"
end

