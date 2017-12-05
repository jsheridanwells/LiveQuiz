Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
  "589238545748-n0rqqjuvgq5ddl3ug5f42uhv61e84119.apps.googleusercontent.com",
  "RR2P4QrRfOPoWCBVm9-gm_T5"
end
