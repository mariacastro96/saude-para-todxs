class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :solim]

  def home
  end

  def solim
  end
end
