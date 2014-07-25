class OpenSourcesController < ApplicationController
  before_action :set_open_source, only: [:show, :edit, :update, :destroy]

  # GET /open_sources
  # GET /open_sources.json
  def index
    @open_sources = OpenSource.all
  end

  # GET /open_sources/1
  # GET /open_sources/1.json
  def show
  end

  # GET /open_sources/new
  def new
    @open_source = OpenSource.new
  end

  # GET /open_sources/1/edit
  def edit
  end

  # POST /open_sources
  # POST /open_sources.json
  def create
    @open_source = OpenSource.new(open_source_params)

    respond_to do |format|
      if @open_source.save
        format.html { redirect_to @open_source, notice: 'Open source was successfully created.' }
        format.json { render :show, status: :created, location: @open_source }
      else
        format.html { render :new }
        format.json { render json: @open_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_sources/1
  # PATCH/PUT /open_sources/1.json
  def update
    respond_to do |format|
      if @open_source.update(open_source_params)
        format.html { redirect_to @open_source, notice: 'Open source was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_source }
      else
        format.html { render :edit }
        format.json { render json: @open_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_sources/1
  # DELETE /open_sources/1.json
  def destroy
    @open_source.destroy
    respond_to do |format|
      format.html { redirect_to open_sources_url, notice: 'Open source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_source
      @open_source = OpenSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_source_params
      params.require(:open_source).permit(:cv_id)
    end
end
