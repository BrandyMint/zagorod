class WelcomeController < ApplicationController

  def index
    hsq = HouseSearchQuery.new search_form, sort_form
    @estimates = Kaminari.paginate_array(hsq.estimates).page(params[:page]).per(HOUSES_PER_PAGE)
    render layout: 'application_wide'
  end

  def contact

  end

end
