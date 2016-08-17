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

  validates :title, :address, :size, :description, :pic_1, :operation, presence: {message: "Requerido"}
  validates :title, uniqueness: {message: "Ya existe una propiedad con este título"}

  def self.search(address, property_type, operation)
    properties = Property.all
    if address.present?
      properties = properties.where('address ilike ?', "%#{address}%")
    end
    if operation.present?
      properties = properties.where('operation ilike ?', "%#{operation}%")
    end
    if property_type.present?
    properties = properties.joins(:tags).where('name ilike ?', "%#{property_type}%")
    end
    return properties
  end

  has_attached_file :pic_1, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_2, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_3, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_4, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_4, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_5, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_5, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_6, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_6, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_7, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_7, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_8, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_8, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_9, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_9, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_10, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_10, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_11, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_11, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_12, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_12, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_13, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_13, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_14, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_14, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_15, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_15, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_16, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_16, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_17, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_17, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_18, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_18, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_19, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_19, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :pic_20, storage: :s3, bucket: ENV['bucket']
  validates_attachment :pic_20, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  has_attached_file :flat, storage: :s3, bucket: ENV['bucket']
  validates_attachment :flat, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
