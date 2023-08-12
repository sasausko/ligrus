# frozen_string_literal: true

class Strain < ApplicationRecord
  has_one_attached :photo
  belongs_to :manufacturer
  has_rich_text :description
end
