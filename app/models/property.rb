class Property < ActiveRecord::Base
  has_many :features, dependent: :destroy
  has_and_belongs_to_many :tags
  
  accepts_nested_attributes_for :features
  accepts_nested_attributes_for :tags

  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  validates :title, :address, :size, :description, :pic_1, :state, presence: {message: "Requerido"}
  validates :title, uniqueness: {message: "Ya existe una propiedad con este nombre"}

  def self.search(address, property_type, state)
    properties = Property.all
    if address.present?
      properties = properties.where('address ilike ?', "%#{address}%")
    end
    if state.present?
      properties = properties.where('state ilike ?', "%#{state}%")
    end
    if property_type.present?
    properties = properties.joins(:tags).where('tag_name ilike ?', "%#{property_type}%")
    end
    return properties
  end

  has_attached_file :pic_1, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_2, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_3, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_4, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_4, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_5, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_5, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_6, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_6, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_7, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_7, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_8, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :pic_8, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :flat, storage: :s3, bucket: "iprop-imagenes"
  validates_attachment :flat, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
