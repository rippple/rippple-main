class WelcomeController < ApplicationController

  def index
    @page_title = "Main"

    @rippples = Rippple.all
  end
end
