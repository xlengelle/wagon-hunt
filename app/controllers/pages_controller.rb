class PagesController < ApplicationController
  def home

  end

  def team

  end

  def join_us
    render plain: "Contact us"
  end

end
