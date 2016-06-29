class Tag < ActiveRecord::Base
  has_and_belongs_to_many :properties
  validates :name, uniqueness: true
end
