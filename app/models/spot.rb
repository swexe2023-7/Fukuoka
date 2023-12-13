class Spot < ApplicationRecord
    belongs_to :tour
    mount_uploader :img, ImgUploader
end
