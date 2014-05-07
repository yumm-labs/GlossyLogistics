class HomeController < ApplicationController

  layout 'glossylogistics'

  caches_page :index, :services, :contact_us, :about_us

  def index
    render :action => 'home'
  end

  def services
  end

  def contact_us
  end

  def about_us
  end


end