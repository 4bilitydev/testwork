class SchoolconnectsController < ApplicationController
  before_action :set_schoolconnect, only: [:show, :edit, :update, :destroy]

  # GET /schoolconnects
  # GET /schoolconnects.json
  def index
    @schoolconnects = Schoolconnect.all
  end

  # GET /schoolconnects/1
  # GET /schoolconnects/1.json
  def show
  end

  # GET /schoolconnects/new
  def new
    @schoolconnect = Schoolconnect.new
  end

  # GET /schoolconnects/1/edit
  def edit
  end

  # POST /schoolconnects
  # POST /schoolconnects.json
  def create
    @schoolconnect = Schoolconnect.new(schoolconnect_params)

    respond_to do |format|
      if @schoolconnect.save
        format.html { redirect_to @schoolconnect, notice: 'Schoolconnect was successfully created.' }
        format.json { render :show, status: :created, location: @schoolconnect }
      else
        format.html { render :new }
        format.json { render json: @schoolconnect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schoolconnects/1
  # PATCH/PUT /schoolconnects/1.json
  def update
    respond_to do |format|
      if @schoolconnect.update(schoolconnect_params)
        format.html { redirect_to @schoolconnect, notice: 'Schoolconnect was successfully updated.' }
        format.json { render :show, status: :ok, location: @schoolconnect }
      else
        format.html { render :edit }
        format.json { render json: @schoolconnect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoolconnects/1
  # DELETE /schoolconnects/1.json
  def destroy
    @schoolconnect.destroy
    respond_to do |format|
      format.html { redirect_to schoolconnects_url, notice: 'Schoolconnect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoolconnect
      @schoolconnect = Schoolconnect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schoolconnect_params
      params.require(:schoolconnect).permit(:title, :content)
    end
end
