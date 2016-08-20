class Post < ActiveRecord::Base
  validates :title, :body, :image, presence: {message: "Requerido"}

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, dependent: :destroy
end
