# frozen_string_literal: true

crumb :root do
  link 'Home', root_path
end

crumb :beuseful do
  link 'Be useful', home_beuseful_path
end

crumb :articles do
  link 'All articles', articles_path
end

crumb :article do |article|
  link article.title, article
  parent :articles
end

crumb :strains do
  link 'All strains', strains_path
end

crumb :strain do |strain|
  link strain.name, strain
  parent :strains
end
