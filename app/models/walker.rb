class Walker < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  validates :walker_name, presence: true
end
