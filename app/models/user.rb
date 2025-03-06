class User < ApplicationRecord
  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
