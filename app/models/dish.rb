class Dish < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {medium: "300x300>", thumb: "100x100>"}, :default_url => "default_dish.png"

#In Paperclip 4.0+ must validate content type or explicity state that no validation is required
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
