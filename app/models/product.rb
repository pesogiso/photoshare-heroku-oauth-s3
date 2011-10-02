class Product < ActiveRecord::Base
	belongs_to :user
	has_many :descriptions
	accepts_nested_attributes_for :descriptions
	has_many :comments
	#accepts_nested_attributes_for :comments

	if Rails.env == 'production'
		# 本番環境用　保存先S3
		has_attached_file :photo, :styles => {
			:thumb  => "30x30",
			:original => "200x200" # あまりデカイサイズをS3に置きたくないから
		}, 
		:storage => :s3,
		:s3_credentials => "#{Rails.root.to_s}/config/s3.yml", 
		:path => ":attachment/:id/:style.:extension"
	else
		# ローカル環境用　保存先public/system/photos/1/
		has_attached_file :photo, :styles => {
			:thumb  => "30x30",
			:original => "200x200" # あまりデカイサイズをS3に置きたくないから
			#:medium => "200x200",
		} 
	end
end

