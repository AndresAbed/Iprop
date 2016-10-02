class SendToFriend
  include ActiveModel::Model
  attr_accessor :sender, :friend_email, :url
  validates_presence_of :sender, :friend_email, :url
end