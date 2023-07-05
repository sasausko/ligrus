class HomeController < ApplicationController
  before_action :load_strains, only: :index

  def index
  end

  def beuseful
  end

  private

  def load_strains
    @strains = Strain.order("created_at desc").limit(5)
  end
end
