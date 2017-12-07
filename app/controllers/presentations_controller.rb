class PresentationsController < ApplicationController
  before_action :authenticate, except: [:show]

  def index
    @presentations = Presentation.where(user_id: current_user.id)
  end

  def show
    @presentation = Presentation.find(params[:id])
    unless @presentation.broadcasting
      authenticate
    end
    session[:current_presentation_id] = @presentation.id
  end

  def edit
    @presentation = Presentation.find(params[:id])
  end

  def broadcast
    @current_presentation = Presentation.find(params[:id])
    @current_presentation.broadcasting = true
    @current_presentation.save
    redirect_to @current_presentation
  end

  def end_broadcast
    @current_presentation = Presentation.find(session[:current_presentation_id])
    @current_presentation.broadcasting = false
    @current_presentation.save
    redirect_to presentations_path
  end

  private
    def presentation_params
      params.require(:presentation).permit(
          :user_id,
          :title,
          :broadcasting
        )
    end

end
