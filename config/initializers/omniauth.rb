OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '188432517964216', '38522140ec53e64c465fe2d45e2b80bb'
  # provider :yammer, 'hKYVuOAI7lo7X2NsvNBDw', 'CCrJ129FDhsO1ANTUY5l58NQHzzPD0Ati3Zo0iYYns'
  provider :twitter, 'rG28TnYYKX5LmxKmDEmcuw', 'o2dP6VPCasbZilnEICwUu2j9YYf88YNx64Z5VUAUxVM'
  provider :google, '346208846295.apps.googleusercontent.com', 'rwBoXpTfZfY7nNdlj6oscJ2Q'

  provider :yammer, 
      'NI0HGSyTYMKk089OH1r5qw', 'kYLIIj4xoiTtGMQ0JtA3QbRXfXeYgqAij31hWqJwwI0',
      {:client_options => {
        :site => 'https://www.staging.yammer.com'
      }}
end