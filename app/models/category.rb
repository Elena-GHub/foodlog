class Category < ApplicationRecord
    has_many :entries
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }
end
