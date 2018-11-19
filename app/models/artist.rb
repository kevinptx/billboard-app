class Artist < ApplicationRecord
  has_many :songs
  has_many :boards, through: :songs
  validates :name, presence: true
end
