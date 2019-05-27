class PictureUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
    include CarrierWave::MiniMagick
    process resize_to_fit: [400, 400]
    require 'aws-sdk-s3'
    #
    #
    # s3 = Aws::S3::Resource.new(region:'us-west-2')
    # obj = s3.bucket('bucket-name').object('key')
    # obj.upload_file('/path/to/source/file')

    CarrierWave.configure do |config|
      config.storage    = :fog
      config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
      config.aws_acl    = 'public-read'
      config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
      config.aws_credentials = {
          access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
          secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
          region:            ENV.fetch('AWS_REGION') # Required
      }
    end
  # Choose what kind of storage to use for this uploader:
  # storage :aws
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
