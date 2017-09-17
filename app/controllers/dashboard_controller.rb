require File.join(Rails.root, "app", "models", "Distrito.rb")
require File.join(Rails.root, "app", "models", "Rol.rb")
require File.join(Rails.root, "app", "models", "TipoDocumento.rb")

class DashboardController < ApplicationController
  layout 'zonaprivada'
  def index
  end
  
  def persona
    @distritos = Distrito.find_by_sql("select id_distrito, nombre_dist from distrito")
    @roles = Rol.find_by_sql("select id_rol, nombre from rol")
    @tipodocumentos = TipoDocumento.find_by_sql("select id_tipo_doc, nombre_doc from tipo_documento")
    render "persona"
  end

  def local
  end

  def canchita
  end

  def alquiler
  end

  def servicioadicional
  end

  def listaalquiler
  end

  def publicidad
  end

  def acceso
  end
end
