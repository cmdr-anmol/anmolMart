class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :addresses, as: :addressable

  # Add avatar attachment
  has_one_attached :avatar

  # Validations
  # validates :avatar, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  validates :phone, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }, allow_blank: true

  # Method to check if the user is an admin
  def admin?
    isAdmin
  end
end
