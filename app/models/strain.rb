class Strain < ApplicationRecord
  has_one_attached :photo
  belongs_to :manufacturer
end
