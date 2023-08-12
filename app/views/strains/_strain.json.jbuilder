# frozen_string_literal: true

json.extract! strain, :id, :name, :photo, :genotype, :thc_level, :cbd_level, :flovering_period, :terpenes, :aroma,
              :description, :created_at, :updated_at
json.url strain_url(strain, format: :json)
json.photo url_for(strain.photo)
