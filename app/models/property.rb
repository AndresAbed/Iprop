class Property < ActiveRecord::Base
  has_many :features, dependent: :destroy
end
