class OpenSourceProjectsController < ApplicationController
  before_action :set_open_source_project, only: [:show, :edit, :update, :destroy]

  # GET /open_source_projects
  # GET /open_source_projects.json
  def index
    @open_source_projects = OpenSourceProject.all
  end

  # GET /open_source_projects/1
  # GET /open_source_projects/1.json
  def show
  end

  # GET /open_source_projects/new
  def new
    @open_source_project = OpenSourceProject.new
  end

  # GET /open_source_projects/1/edit
  def edit
  end

  # POST /open_source_projects
  # POST /open_source_projects.json
  def create
    @open_source_project = OpenSourceProject.new(open_source_project_params)

    respond_to do |format|
      if @open_source_project.save
        format.html { redirect_to @open_source_project, notice: 'Open source project was successfully created.' }
        format.json { render :show, status: :created, location: @open_source_project }
      else
        format.html { render :new }
        format.json { render json: @open_source_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_source_projects/1
  # PATCH/PUT /open_source_projects/1.json
  def update
    respond_to do |format|
      if @open_source_project.update(open_source_project_params)
        format.html { redirect_to @open_source_project, notice: 'Open source project was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_source_project }
      else
        format.html { render :edit }
        format.json { render json: @open_source_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_source_projects/1
  # DELETE /open_source_projects/1.json
  def destroy
    @open_source_project.destroy
    respond_to do |format|
      format.html { redirect_to open_source_projects_url, notice: 'Open source project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_source_project
      @open_source_project = OpenSourceProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_source_project_params
      params.require(:open_source_project).permit(:url, :open_source_id)
    end
end
