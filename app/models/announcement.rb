class Announcement < ActiveRecord::Base
	attr_accessible( :content, :title, :cover, :cover_file_name, :cover_content_type, :cover_file_size, :cover_updated_at )

	has_attached_file( :cover,
		styles: {
			thumb: '200x200',
			medium: '1024x768',
			large: '2048x1536'
		},
		storage: :s3,
		s3_credentials: {
			access_key_id: ENV['LIRA_S3_ACCESS_KEY_ID'],
			secret_access_key: ENV['LIRA_S3_SECRET_ACCESS_KEY']
		},
		path: "announcements/:id/:style.:extension",
		bucket: ENV['LIRA_S3_BUCKET'],
		url: ':s3_domain_url'
	)

	# validators
	validates( :title,
		presence: true,
		length: { in: 3..100 }
	)

	validates( :content,
		presence: true
	)
end