class Entry < ApplicationRecord
    validates :meal_type, :calories, :proteins, :carbohydrates, :fats, presence: true
    validates :meal_type, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }

    def day
        self.created_at.strftime("%b %e, %Y")
    end
end
