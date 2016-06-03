class Property < ActiveRecord::Base
  has_many :features, dependent: :destroy
  accepts_nested_attributes_for :features

  validates :title, presence: true
end
