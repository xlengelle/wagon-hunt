class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :team, :about]

  def home

  end

  def team

  end

  def join_us
    render plain: "Contact us"
  end

end
