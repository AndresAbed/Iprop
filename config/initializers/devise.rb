Devise.setup do |config|
  config.mailer_sender = 'no-reply@iproponline.com.ar'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 5..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.secret_key = 'ad0a90e47097b2394c397b92481458442fda99a7cbc6ee0192f5b5b6896a9e2f4e477a0150c26e713503cb73ab87341bd6a8f6a71efa97a97427fea24d77a4d9'
end
