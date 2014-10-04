class WinesController < ApplicationController
  def index
  	@available_at = Time.now
    @wines = Wine.all
  end

  def show
  	@wines = Wine.find(params[:id])
  end
end
