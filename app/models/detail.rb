class Detail < ApplicationRecord
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :service
	
	validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
resourcify
end
