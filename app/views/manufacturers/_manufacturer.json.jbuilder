# frozen_string_literal: true

json.extract! manufacturer, :id, :name, :logo, :local, :description, :created_at, :updated_at
json.url manufacturer_url(manufacturer, format: :json)
json.logo url_for(manufacturer.logo)
