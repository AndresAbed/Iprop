class TeamMember < ActiveRecord::Base
  has_attached_file :avatar, :styles => {small: "75x75>" }, 
  url: "/images/admins/:id/:style/:basename.:extension"
  validates_attachment :avatar, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
