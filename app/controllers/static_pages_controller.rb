class StaticPagesController < ApplicationController
  def home
    redirect_to presentations_path if user_signed_in?
  end
end
