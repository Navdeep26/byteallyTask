Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1204119209687979', 'b5179255a5211288fb14fc7965c06712'
end