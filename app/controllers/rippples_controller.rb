class RippplesController < ApplicationController
  before_action :find_rippple, only: [:edit, :update, :show, :delete]

  # Index action to render all Rippples
  def index
    @page_title = "View"
    @rippples = Rippple.all

    @tooltips = ["Report this link", "Edit", "Delete"]
  end

  # New action for creating Rippple
  def new
    @page_title = "New"
    @rippple = Rippple.new
  end

  # Create action saves the Rippple into database
  def create
    @page_title = "Create"
    @rippple = Rippple.new
    if @rippple.save(rippple_params)
      flash[:notice] = "Successfully created Rippple!"
      redirect_to rippple_path(@rippples)
    else
      flash[:alert] = "Error creating new Rippple!"
      render :new
    end
  end

  # Edit action retrives the Rippple and renders the edit page
  def edit
    @page_title = "Edit"
  end

  # Update action updates the Rippple with the new information
  def update
    if @rippple.update_attributes(rippple_params)
      flash[:notice] = "Successfully updated Rippple!"
      redirect_to @rippple
    else
      flash[:alert] = "Error updating Rippple!"
      render :edit
    end
  end

  # The show action renders the individual Rippple after retrieving the the id
  def show
  end

  # The destroy action removes the Rippple permanently from the database
  def destroy
    if @rippple.destroy
      flash[:notice] = "Successfully deleted Rippple!"
      redirect_to rippples_path
    else
      flash[:alert] = "Error updating Rippple!"
    end
  end


  private

  def rippple_params
    params.require(:rippple).permit(:title, :body)
  end

  def find_rippple
    @rippple = Rippple.find(params[:id])
  end
end
