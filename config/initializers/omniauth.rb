OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '188432517964216', '38522140ec53e64c465fe2d45e2b80bb'
  provider :twitter, 'rG28TnYYKX5LmxKmDEmcuw', 'o2dP6VPCasbZilnEICwUu2j9YYf88YNx64Z5VUAUxVM'
  provider :google, '346208846295.apps.googleusercontent.com', 'rwBoXpTfZfY7nNdlj6oscJ2Q'

  provider :yammer, ENV['YAMMER_PRODUCTION_CONSUMER_KEY'], ENV['YAMMER_PRODUCTION_CONSUMER_SECRET']
  provider :yammer_staging, ENV['YAMMER_STAGING_CONSUMER_KEY'], ENV['YAMMER_STAGING_CONSUMER_SECRET']
end