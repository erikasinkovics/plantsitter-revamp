class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings_by_customer, class_name: 'Booking', foreign_key: :customer_id
  has_many :bookings_by_plant_sitter, class_name: 'Booking', foreign_key: :plant_sitter_id

  has_many :reviews_by_customer, class_name: 'Review', foreign_key: :customer_id
  has_many :reviews_by_plant_sitter, class_name: 'Review', foreign_key: :plant_sitter_id

  has_one_attached :photo
end
