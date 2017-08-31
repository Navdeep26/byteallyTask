Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '345322932557348', 'f93b1b002709041326e40467f1375653'
end