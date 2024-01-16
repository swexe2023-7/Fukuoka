class Tourspot < ApplicationRecord
    belongs_to :spot
    belongs_to :tour
end
