class Reservation < ApplicationRecord
    belongs_to :tourist
    belongs_to :spot
end
