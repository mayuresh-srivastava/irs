class HomeController < ApplicationController
  def index
  end

  def not_found
    render plain: t('not_found')
  end
end
