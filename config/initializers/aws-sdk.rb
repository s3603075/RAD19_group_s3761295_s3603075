require 'aws-sdk-s3'

Aws.config.update(
    credentials: Aws::Credentials.new('ASIA2TDEZWNHJMSHM272', 'MBwl3A27BvMUT7GDsbH9VpuDAr7ycF2DHm7Yv80Y'),
    region: 'ap-southeast-2',
    )

# credentials: Aws::Credentials.new('ASIA2TDEZWNHJMSHM272', 'MBwl3A27BvMUT7GDsbH9VpuDAr7ycF2DHm7Yv80Y'),
#     region: 'ap-southeast-2',