class Property < ActiveRecord::Base
  has_many :features, dependent: :destroy
  accepts_nested_attributes_for :features

  validates :title, presence: true

  has_attached_file :pic_1, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_2, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_3, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_4, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_4, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_5, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_5, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_6, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_6, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_7, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_7, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_8, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :pic_8, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :flat, 
  url: "/images/properties/:id/:style/:basename.:extension"
  validates_attachment :flat, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
