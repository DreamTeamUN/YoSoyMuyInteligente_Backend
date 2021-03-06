# == Schema Information
#
# Table name: archivos
#
#  id           :integer          not null, primary key
#  nombre       :string           not null
#  tipo_archivo :string           default("archivo"), not null
#  extension    :string           not null
#  ruta         :string           not null
#

require 'carrierwave/orm/activerecord'

class Archivo < ApplicationRecord

  #Uploader
  mount_uploader :ruta, ResourcesUploader

  #Relaciones
  has_one :archivo_juego
  has_one :tipo_juego, through: :archivo_juego
  has_many :usuario
  has_many :estudiante

  #Validaciones
  validates :nombre, length: { maximum: 45, minimum: 3 }
  validates :tipo_archivo, inclusion: { in: ["imagen", "audio", "archivo", "pdf"] }
  validates :extension, inclusion: { in: ["png", "jpg", "jpeg", "pdf", "mp3"] }

  #Consultas
  def self.by_tipo_archivo( tipo_archivo, page )
    where("tipo_archivo == ?", tipo_archivo).paginate(page: page, per_page: 10)
  end

end
