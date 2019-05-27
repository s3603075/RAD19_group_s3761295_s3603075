require 'aws-sdk-s3'

Aws.config.update(
    credentials: Aws::Credentials.new('access-key-id', 'secret-access-key'),
    region: 'us-east-1',
    )

