class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true, :inclusion => 0..2100
    has_and_belongs_to_many :authors

    after_initialize :init

    def init
        self.authors ||= []
    end

end
