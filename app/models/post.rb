class Post < ActiveRecord::Base
  validates :title, :subtitle, :body, :image, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, 
  url: "/images/posts/:id/:style/:basename.:extension"
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
