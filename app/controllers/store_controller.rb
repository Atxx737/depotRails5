class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index

    if params[:set_locale]
      Rails.logger.error("app/controllers/store_controllers.rb - index")
      redirect_to store_index_url(locale: params[:set_locale])
    else
      Rails.logger.debug("app/controllers/store_controllers.rb - index - show produtct")
      @products = Product.order(:title)
      if session[:counter].nil?
        session[:counter] = 0
      else
        session[:counter] += 1
      end
    end
  end
end
