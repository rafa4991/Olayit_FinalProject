class Product < ActiveRecord::Base
	has_many :reviews
	belongs_to :vendor_user
	belongs_to :vendor_organization

	# This is from the carrierwave gem and
	# alllows vendors to upload images for their
	# products.
	mount_uploader :image, ImageUploader
end
