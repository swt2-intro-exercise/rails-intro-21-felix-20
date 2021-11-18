class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true, :inclusion => 0..2100
end
