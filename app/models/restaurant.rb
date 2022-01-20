class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: :true, inclusion: {in: CATEGORY}
  has_many :reviews, dependent: :destroy
end
