class Service < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  
    def self.search(query)
   where("name like ?", "%#{query}%")
    end

end
