class PagesController < ApplicationController
  def permalink
    @page = Page.find_by(permalink: params[:permalink])
    
    if @page.nil?
      redirect_to root_url
    else
      render :show
    end
  end

  def show
    @page = Page.find(params[:id])
  end
  # Renders the app/views/pages/show.html.erb

  def about
  end
  # Renders the app/views/pages/about.html.erb
end
