class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients
  has_rich_text :content

  validate :validate_number_of_ingredients

  private

  def validate_number_of_ingredients
    if ingredients.size > 3
      errors.add(:base, "A recipe cannot have more than 3 ingredients")
    end
  end
end
