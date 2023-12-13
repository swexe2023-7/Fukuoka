class Tour < ApplicationRecord
    has_one :reservation
    belongs_to :tourist
    has_many :spots
end
