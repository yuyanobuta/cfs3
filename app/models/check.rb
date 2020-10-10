class Check < ApplicationRecord
    validates :hansaki, presence: true, length: { maximum: 255 }
end
