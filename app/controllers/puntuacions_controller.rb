class PuntuacionsController < ApplicationController
  before_action :set_puntuacion, only: [:show, :update, :destroy]

  # GET /puntuacions
  def index
    @puntuacions = Puntuacion.all

    render json: @puntuacions
  end

  # GET /puntuacions/1
  def show
    render json: @puntuacion
  end

  # POST /puntuacions
  def create
    @puntuacion = Puntuacion.new(puntuacion_params)

    if @puntuacion.save
      render json: @puntuacion, status: :created, location: @puntuacion
    else
      render json: @puntuacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /puntuacions/1
  def update
    if @puntuacion.update(puntuacion_params)
      render json: @puntuacion
    else
      render json: @puntuacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /puntuacions/1
  def destroy
    @puntuacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puntuacion
      @puntuacion = Puntuacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def puntuacion_params
      params.require(:puntuacion).permit(:fecha, :puntuacion_obtenida)
    end
end