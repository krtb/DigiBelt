class ProjectsController < ApplicationController
  before_action :fetch_project, only: [:show]

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to @project
  end

  #will delete index page, simply here to make sure our projects are being created
  def index
    @projects = Project.all
  end

  def show
  end


  private
  def project_params
    params.require(:project).permit(:name)
  end

  def fetch_project
    @project = Project.find(params[:id])
  end
end
