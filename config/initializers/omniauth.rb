Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, 'a1533e0b268cca1b446d', '7fc8b896959cac27cc4310e247dfe82de9c1c517'
  end