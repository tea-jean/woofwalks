class Service < ApplicationRecord
    belongs_to :walker
    has_one_attached :picture
end
