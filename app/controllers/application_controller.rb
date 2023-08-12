# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_theme

  private

  def set_theme
    return unless params[:theme].present?

    theme = params[:theme].to_sym
    # session[:theme] = theme
    cookies[:theme] = theme
    redirect_to(request.referrer || root_path)
  end
end
