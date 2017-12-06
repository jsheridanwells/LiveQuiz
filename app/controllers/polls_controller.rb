class PollsController < ApplicationController

  def new
    @poll = Poll.new
    @items = Array.new
    3.times do
      @items.push Item.new
    end
  end

  def create
    @poll = Poll.new(poll_params)
    @poll.presentation_id = session[:current_presentation_id]

    if @poll.save
      redirect_to @poll
    else
      render :action => 'new'
    end
  end

  private
    def poll_params
      params.require(:poll).permit(:presentation_id, :content)
    end

    def item_params
      params.require(:item).permit(:content, :poll_id)
    end

end
