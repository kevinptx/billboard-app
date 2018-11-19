class Board < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :artists, through: :songs
  validates :name, presence: true
end
