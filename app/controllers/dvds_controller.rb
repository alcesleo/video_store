class DvdsController < ApplicationController
  before_action :set_dvd, only: [:show, :edit, :update, :destroy]

  # GET /dvds
  def index
    @dvds = Dvd.all
  end

  # GET /dvds/1
  def show
  end

  # GET /dvds/new
  def new
    @dvd = Dvd.new
  end

  # GET /dvds/1/edit
  def edit
  end

  # POST /dvds
  def create
    @dvd = Dvd.new(dvd_params)

    if @dvd.save
      redirect_to @dvd, notice: 'Dvd was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dvds/1
  def update
    if @dvd.update(dvd_params)
      redirect_to @dvd, notice: 'Dvd was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dvds/1
  def destroy
    @dvd.destroy
    redirect_to dvds_url, notice: 'Dvd was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dvd
      @dvd = Dvd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dvd_params
      params.fetch(:dvd, {}).permit(:title)
    end
end
