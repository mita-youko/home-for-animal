class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do
    validates :member_type_id
    validates :nickname
    validates :name
    validates :name_kana
    validates :gender_id
    validates :postal_code
    validates :prefecture_id
    validates :city
    validates :building
    validates :phone_number
  end
  
  has_many :dogs
end
