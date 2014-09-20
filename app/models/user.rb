# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessor :password
  attr_accessible :email, :name, :password_confirmation

  validates :name, :presence => true, :length => {:maximum => 50}
  validates :email, :presence => true, :format => {:with => email_regex}
  validates :password, :presence => true, :confirmation => true, :length => {:within => 6..40}

  before_save :encrypted_password

  private

  def encrypted_password
    self.encrypted_password = encrypt(password)
  end

  def encrypt(string)
    string
  end
end
