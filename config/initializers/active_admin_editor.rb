ActiveAdmin::Editor.configure do |config|
  config.s3_bucket = ENV['bucket']
  config.aws_access_key_id = ENV['access_key_id']
  config.aws_access_secret = ENV['secret_access_key']
  config.storage_dir = 'activeadmin'
end
