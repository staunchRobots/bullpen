class ProjectInterestPointsController < ApplicationController
  before_action :set_project_interest_point, only: [:show, :edit, :update, :destroy]

  # GET /project_interest_points
  # GET /project_interest_points.json
  def index
    @project_interest_points = ProjectInterestPoint.all
  end

  # GET /project_interest_points/1
  # GET /project_interest_points/1.json
  def show
  end

  # GET /project_interest_points/new
  def new
    @project_interest_point = ProjectInterestPoint.new
  end

  # GET /project_interest_points/1/edit
  def edit
  end

  # POST /project_interest_points
  # POST /project_interest_points.json
  def create
    @project_interest_point = ProjectInterestPoint.new(project_interest_point_params)

    respond_to do |format|
      if @project_interest_point.save
        format.html { redirect_to @project_interest_point, notice: 'Project interest point was successfully created.' }
        format.json { render :show, status: :created, location: @project_interest_point }
      else
        format.html { render :new }
        format.json { render json: @project_interest_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_interest_points/1
  # PATCH/PUT /project_interest_points/1.json
  def update
    respond_to do |format|
      if @project_interest_point.update(project_interest_point_params)
        format.html { redirect_to @project_interest_point, notice: 'Project interest point was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_interest_point }
      else
        format.html { render :edit }
        format.json { render json: @project_interest_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_interest_points/1
  # DELETE /project_interest_points/1.json
  def destroy
    @project_interest_point.destroy
    respond_to do |format|
      format.html { redirect_to project_interest_points_url, notice: 'Project interest point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_interest_point
      @project_interest_point = ProjectInterestPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_interest_point_params
      params.require(:project_interest_point).permit(:content, :project_id)
    end
end
