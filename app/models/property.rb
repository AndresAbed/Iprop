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

  validates :title, :address, :size, :description, :operation, presence: {message: "Requerido"}
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

  attr_accessor :delete_flat, :delete_pic_2, :delete_pic_3, :delete_pic_4, :delete_pic_5, :delete_pic_6, 
  :delete_pic_7, :delete_pic_8, :delete_pic_9, :delete_pic_10, :delete_pic_11, :delete_pic_12,
  :delete_pic_13, :delete_pic_14, :delete_pic_15, :delete_pic_16, :delete_pic_17, :delete_pic_18, 
  :delete_pic_19, :delete_pic_20

  before_validation { self.flat.clear if self.delete_flat == '1' }
  before_validation { self.pic_2.clear if self.delete_pic_2 == '1' }
  before_validation { self.pic_3.clear if self.delete_pic_3 == '1' }
  before_validation { self.pic_4.clear if self.delete_pic_4 == '1' }
  before_validation { self.pic_5.clear if self.delete_pic_5 == '1' }
  before_validation { self.pic_6.clear if self.delete_pic_6 == '1' }
  before_validation { self.pic_7.clear if self.delete_pic_7 == '1' }
  before_validation { self.pic_8.clear if self.delete_pic_8 == '1' }
  before_validation { self.pic_9.clear if self.delete_pic_9 == '1' }
  before_validation { self.pic_10.clear if self.delete_pic_10 == '1' }
  before_validation { self.pic_11.clear if self.delete_pic_11 == '1' }
  before_validation { self.pic_12.clear if self.delete_pic_12 == '1' }
  before_validation { self.pic_13.clear if self.delete_pic_13 == '1' }
  before_validation { self.pic_14.clear if self.delete_pic_14 == '1' }
  before_validation { self.pic_15.clear if self.delete_pic_15 == '1' }
  before_validation { self.pic_16.clear if self.delete_pic_16 == '1' }
  before_validation { self.pic_17.clear if self.delete_pic_17 == '1' }
  before_validation { self.pic_18.clear if self.delete_pic_18 == '1' }
  before_validation { self.pic_19.clear if self.delete_pic_19 == '1' }
  before_validation { self.pic_20.clear if self.delete_pic_20 == '1' }

  has_attached_file :pic_1, styles: { medium: "400x270" }
  validates_attachment :pic_1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_2, styles: { medium: "400x270" }
  validates_attachment :pic_2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_3, styles: { medium: "400x270" }
  validates_attachment :pic_3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_4, styles: { medium: "400x270" }
  validates_attachment :pic_4, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_5, styles: { medium: "400x270" }
  validates_attachment :pic_5, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_6, styles: { medium: "400x270" }
  validates_attachment :pic_6, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_7, styles: { medium: "400x270" }
  validates_attachment :pic_7, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_8, styles: { medium: "400x270" }
  validates_attachment :pic_8, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_9, styles: { medium: "400x270" }
  validates_attachment :pic_9, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_10, styles: { medium: "400x270" }
  validates_attachment :pic_10, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_11, styles: { medium: "400x270" }
  validates_attachment :pic_11, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_12, styles: { medium: "400x270" }
  validates_attachment :pic_12, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_13, styles: { medium: "400x270" }
  validates_attachment :pic_13, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_14, styles: { medium: "400x270" }
  validates_attachment :pic_14, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_15, styles: { medium: "400x270" }
  validates_attachment :pic_15, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_16, styles: { medium: "400x270" }
  validates_attachment :pic_16, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_17, styles: { medium: "400x270" }
  validates_attachment :pic_17, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_18, styles: { medium: "400x270" }
  validates_attachment :pic_18, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_19, styles: { medium: "400x270" }
  validates_attachment :pic_19, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :pic_20, styles: { medium: "400x270" }
  validates_attachment :pic_20, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy

  has_attached_file :flat
  validates_attachment :flat, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }, dependent: :destroy
end
