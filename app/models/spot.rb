class Spot < ApplicationRecord
    # belongs_to :tour
    # has_one :tourspot
    # belongs_to :tour
    has_many :tourspots
    has_many :tours, through: :tourspots
end
