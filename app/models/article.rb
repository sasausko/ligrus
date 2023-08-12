# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  has_rich_text :body

  def tag_list=(tags_string)
    tag_names = tags_string.split(',').collect { |s| s.strip.downcase }.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name:) }
    self.tags = new_or_found_tags
  end
end
