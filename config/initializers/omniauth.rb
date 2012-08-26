OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '260517390734833', '2c855c6c221e6f826ab4b4b035a506a7',
  :scope => 'email', :display => 'popup'
end
