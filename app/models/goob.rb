class Goob < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :image, :styles => { :large => "450x450", :medium => "300x300>", :thumb => "100x100>" },
							  :storage => :s3,
							  :bucket => 'Shmeebler'
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
