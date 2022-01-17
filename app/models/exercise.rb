class Exercise < ApplicationRecord
    belongs_to :category
    validates :name, presence: true
    validates :instructions, presence: true
    validates :image, presence: true
end 