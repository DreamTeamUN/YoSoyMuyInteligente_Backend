class UsuariosController < ApplicationController
  before_action :authenticate_usuario, only: [:index,:show, :update, :destroy]
  before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios  = current_usuario

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.tipo_usuario_id = params[:tipo_usuario_id]
    @usuario.archivo_id = 0

    if @usuario.save
      render json: @usuario, status: :created, location: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:user, :password, :nombre, :email, :fecha_nacimiento)
    end
end
