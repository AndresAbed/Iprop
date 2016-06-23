class Tag < ActiveRecord::Base
  has_and_belongs_to_many :properties
  validates :tag_name, uniqueness: true
end
