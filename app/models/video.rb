class Video < ActiveRecord::Base
  validates :url, :description, presence: {message: "Requerido"}
end
