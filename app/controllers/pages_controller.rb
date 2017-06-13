class PagesController < ApplicationController

  def welcome
    render :welcome
    @header = "Welcome"
  end#welcome

  def about
    render :about
    @header = "About Us"
  end#about

  def contest
    render :contest
    @header = "Contest"
  end#contest

end
