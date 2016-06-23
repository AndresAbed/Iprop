class AppraisalsMessage
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :address, :size, :rooms_amount, :comments

  validates_presence_of :name, :email, :phone, :address, :size, :rooms_amount
end