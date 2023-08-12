# frozen_string_literal: true

class CreateStrains < ActiveRecord::Migration[7.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :genotype
      t.string :thc_level
      t.string :cbd_level
      t.string :flovering_period
      t.string :terpenes
      t.string :aroma
      t.text :description
      t.belongs_to :manufacturer

      t.timestamps
    end
  end
end
