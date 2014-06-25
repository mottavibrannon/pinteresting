class PagesController < ApplicationController
  def home
  	@disable_primary_container = true
  	@disable_navbar = true
  end

  def about
  end

  def contact_us
  end
  
end
