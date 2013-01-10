OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '188432517964216', '38522140ec53e64c465fe2d45e2b80bb'
  provider :yammer, 'hKYVuOAI7lo7X2NsvNBDw', 'CCrJ129FDhsO1ANTUY5l58NQHzzPD0Ati3Zo0iYYns'
end