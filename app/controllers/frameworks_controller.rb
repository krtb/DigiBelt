class FrameworksController < ApplicationController
  def show
    @framework = Framework.find(params[:id])
  end
end
