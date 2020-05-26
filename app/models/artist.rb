class Artist < ApplicationRecord
  has_many :songs
  has_many :charts, through: :songs
end
