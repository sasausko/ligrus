class Manufacturer < ApplicationRecord
  has_one_attached :logo
  has_many :strains
end
