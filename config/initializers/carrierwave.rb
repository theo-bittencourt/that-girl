CarrierWave.configure do |config|
  
  
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
    :region                 => 'sa-east-1'
  }
  
  config.fog_directory = "theobittencourt.work"
  
  if Rails.env.development?
    config.storage = :file
  end
  
  if Rails.env.production?
    config.storage = :fog
  end
  
  if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  end

end



# Patch para ajuste da qualidade da imagem
# https://github.com/jnicklas/carrierwave/wiki/How-to%3A-Specify-the-image-quality
module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
  end
end