class PastorsController < ApplicationController
  before_action :set_pastor, only: [:show, :edit, :update, :destroy]

  # GET /pastors
  # GET /pastors.json
  def index
    @pastors = Pastor.all
  end

  # GET /pastors/1
  # GET /pastors/1.json
  def show
  end

  # GET /pastors/new
  def new
    @pastor = Pastor.new
  end

  # GET /pastors/1/edit
  def edit
  end

  # POST /pastors
  # POST /pastors.json
  def create
    @pastor = Pastor.new(pastor_params)

    respond_to do |format|
      if @pastor.save
        format.html { redirect_to @pastor, notice: 'Pastor was successfully created.' }
        format.json { render :show, status: :created, location: @pastor }
      else
        format.html { render :new }
        format.json { render json: @pastor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastors/1
  # PATCH/PUT /pastors/1.json
  def update
    respond_to do |format|
      if @pastor.update(pastor_params)
        format.html { redirect_to @pastor, notice: 'Pastor was successfully updated.' }
        format.json { render :show, status: :ok, location: @pastor }
      else
        format.html { render :edit }
        format.json { render json: @pastor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastors/1
  # DELETE /pastors/1.json
  def destroy
    @pastor.destroy
    respond_to do |format|
      format.html { redirect_to pastors_url, notice: 'Pastor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastor
      @pastor = Pastor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pastor_params
      params.require(:pastor).permit(:name)
    end
end
