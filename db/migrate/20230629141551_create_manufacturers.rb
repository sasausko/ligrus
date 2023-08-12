# frozen_string_literal: true

class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :local
      t.text :description

      t.timestamps
    end
  end
end
