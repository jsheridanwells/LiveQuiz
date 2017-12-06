class PresentationsController < ApplicationController
  before_action :authenticate

  def index
    @presentations = Presentation.where(user_id: current_user.id)
  end

  def show
    @presentation = Presentation.find(params[:id])
  end

end
