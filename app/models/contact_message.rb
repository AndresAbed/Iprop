class ContactMessage
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :message

  validates_presence_of :name, :email, :phone, :message
end