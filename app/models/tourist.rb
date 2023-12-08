class Tourist < ApplicationRecord
    # belongs_to :welcome
    validates :password, presence: true, confirmation: true
    attr_accessor :password, :password_confirmation
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
    
end
