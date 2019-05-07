class Userlist < ApplicationRecord
	mount_uploader :file, FileUploader
	validates :name, presence: true
	validates_presence_of :file
end
