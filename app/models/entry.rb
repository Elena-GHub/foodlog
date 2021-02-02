class Entry < ApplicationRecord
    belongs_to :category
    validates :meal_type, :calories, :proteins, :carbohydrates, :fats, presence: true
    validates :meal_type, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }

    def day
        self.created_at.strftime("%b %d, %Y")
    end
end
