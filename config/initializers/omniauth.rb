Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook,  '445257092798879', '2b002e34746a73b218cef78d3dceab0e'
  end