class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # user only neds to make one payment to sign up for the site
  has_one :payment

  accepts_nested_attributes_for :payment
  has_many :images
end
