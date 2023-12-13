class Spot < ApplicationRecord
    has_one :reservation
    belongs_to :tourist
    mount_uploader :img, ImgUploader
end
