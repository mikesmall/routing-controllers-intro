class PagesController < ApplicationController

  def welcome
    render :welcome
  end#welcome

  def about
    render :about
  end#about

  def contest
    render :contest
  end#contest 

end
