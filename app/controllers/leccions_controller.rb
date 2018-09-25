class LeccionsController < ApplicationController
  before_action :set_leccion, only: [:show, :update, :destroy]

  # GET /leccions
  def index
    @leccions = Leccion.all

    render json: @leccions
  end

  # GET /leccions/1
  def show
    render json: @leccion
  end

  # POST /leccions
  def create
    @leccion = Leccion.new(leccion_params)

    if @leccion.save
      render json: @leccion, status: :created, location: @leccion
    else
      render json: @leccion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leccions/1
  def update
    if @leccion.update(leccion_params)
      render json: @leccion
    else
      render json: @leccion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leccions/1
  def destroy
    @leccion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leccion
      @leccion = Leccion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leccion_params
      params.require(:leccion).permit(:semana)
    end
end