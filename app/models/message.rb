class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :subject, :body

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :subject
  validates_presence_of :body
end