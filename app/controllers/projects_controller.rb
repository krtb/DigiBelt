class ProjectsController < ApplicationController
  before_action :fetch_project, only: [:show]

  def new
    @project = Project.new
    @databases = Database.all
    @languages = Language.all
    @categories = Category.all
  end

  def create
    create_default_project
    project_params
    @project.language_id = params[:project][:language_id].to_i
    @project.save
    redirect_to project_path(@project)
  end

  #will delete index page, simply here to make sure our projects are being created
  def index
    @projects = Project.all
  end

  def show
  end


  private
  def project_params
    params.require(:project).permit(params[:language_id])
  end

  def fetch_project
    @project = Project.find(params[:id])
  end

  def create_default_project
    @project = Project.create(language_id: 1, database_id: 1, user_id: 1)
  end

end
