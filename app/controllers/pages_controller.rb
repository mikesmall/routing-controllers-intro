class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    render :welcome
    @header = "Welcome"
  end#welcome

  def about
    render :about
    @header = "About Us"
  end#about

  def contest
    # render :contest
    # @header = "Contest"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end#contest

  def kitten
    # render :kitten
    @header = "A kitten."
    # set_kitten_url
  end#kitten

  def kittens
    @header = "Many kittens!"
    # set_kitten_url
  end#kittens

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end#set_kitten_url


end#PagesController
