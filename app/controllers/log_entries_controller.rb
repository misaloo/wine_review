class LogEntriesController < ApplicationController
  before_action :set_wine

  def index
    @log_entries = @wine.log_entries.order('created_at desc')
  end

  private

  def set_wine
    @wine = Wine.find(params[:wine_id])
  end

end
