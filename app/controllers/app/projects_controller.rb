class App::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @total = Project.count
    puts @total
  end

  def new
    @project = Project.new
  end


  def create
    puts 'create method.'
    #render text: params[:project].inspect

    @project = Project.new(post_params)
    @project.save
    redirect_to action: :index
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    if @project.update(params[:project].permit(:name))
      redirect_to @project
    else
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:project).permit(:name)
  end
end
