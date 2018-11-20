class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :solim, :project]

  def home
  end

  def solim
  end

  def project
  end

  def question
  end
end
