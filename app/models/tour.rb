class Tour < ApplicationRecord
    has_one :reservation
    # belongs_to :tourist
    # has_many :spots
    has_many :tourspots
    # has_many :tourspot_spots, through: :tourspots, source: :spot
    has_many :spots, through: :tourspots
end
