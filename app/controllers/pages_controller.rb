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

  def kitten
    # render :kitten
    @header = "Kitten"
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end#kitten

end#PagesController
