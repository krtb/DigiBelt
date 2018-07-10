class TechsController < ApplicationController
  before_action :fetch_tech, only: [:show]

  def new
    @tech = Tech.new
  end

  def create
    @tech = Tech.create(tech_params)
    redirect_to @tech
  end

  #will delete index page, simply here to make sure our techs are being created
  def index
    @techs = Tech.all
  end

  def show
  end


  private
  def tech_params
    params.require(:tech).permit(:name)
  end

  def fetch_tech
    @tech = Tech.find(params[:id])
  end
end
