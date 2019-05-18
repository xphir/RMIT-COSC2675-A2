CarrierWave.configure do |config|
  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end
  
  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'
      config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
        :aws_secret_access_key => ENV['S3_SECRET_KEY'],
        :region                => ENV['S3_REGION']
      }
      config.fog_directory     =  ENV['S3_BUCKET']                      # required
      # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
      # config.fog_public     = false                                   # optional, defaults to true
      # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
      config.cache_dir = "#{Rails.root}/tmp/uploads"                    # To let CarrierWave work on heroku
    end
  end
  
end