class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true
end

# When you delete a cocktail, you should delete
# associated doses (but not the ingredients as they can be linked to other cocktails).

