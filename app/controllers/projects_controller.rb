class ProjectsController < ApplicationController
  before_action :fetch_project, only: [:show]

  def new
    @project = Project.new
    @databases = Database.all
    @languages = Language.all
    @categories = Category.all
    if !logged_in_user_id
      redirect_to welcome_path, notice: 'You must be logged in to access this information'
    end
  end

  def create
    create_default_project
    project_params
    if params[:project][:database_bool] == "true"
      @project.database_id = 2
    else
      @project.database_id = 1
    end
    @project.user_id = logged_in_user_id
    @project.name = params[:project][:name]
    @project.language_id = params[:project][:language_id].to_i
    @project.save
    #byebug
    redirect_to project_path(@project)
  end

  #will delete index page, simply here to make sure our projects are being created
  def index
    get_logged_in_user
    @projects = Project.all.select {|project| project.user_id == logged_in_user_id }
  end

  def show
  end


  private
  def project_params
    params.require(:project).permit(params[:language_id], params[:name], params[:database_bool])
  end

  def fetch_project
    @project = Project.find(params[:id])
  end

  def create_default_project
    @project = Project.create(language_id: 1, database_id: 1, user_id: 1)
  end

end
