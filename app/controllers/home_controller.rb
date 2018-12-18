class HomeController < ApplicationController
  def index
  end

  def not_found
  	render plain: 'Page not found'
  end
end
