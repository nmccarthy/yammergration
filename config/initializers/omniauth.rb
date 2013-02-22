OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '188432517964216', '38522140ec53e64c465fe2d45e2b80bb'
  # provider :yammer, 'kvGDzE1a5A125MtYlVa96g', 'Zqep385R9PZ9gQoTab341cfljm9F06krlkORNl8U28'
  provider :twitter, 'rG28TnYYKX5LmxKmDEmcuw', 'o2dP6VPCasbZilnEICwUu2j9YYf88YNx64Z5VUAUxVM'
  provider :google, '346208846295.apps.googleusercontent.com', 'rwBoXpTfZfY7nNdlj6oscJ2Q'

  provider :yammer, 
      'bOeqDSuoVig6d914x9HEGw', '3azFh60Pd6MyD7uPNPwxi3PqmJ9m3oVYfqYCcnaC8s',
      {:client_options => {
        :site => 'https://www.staging.yammer.com'
      }}
      
      
end