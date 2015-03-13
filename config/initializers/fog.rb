CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV['S3_KEY'],                        # required
      :aws_secret_access_key  => ENV['S3_SECRET'],
      :endpoint               => 'http://s3.amazonaws.com/tiybucket' # optional, defaults to nil
}
config.fog_directory  = 'tiybucket'
end
