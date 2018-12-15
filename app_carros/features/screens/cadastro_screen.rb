require_relative '../screens/basic_screen.rb'

class CadastroScreen

  def initialize
    @basic = Basic.new
  end

  def campo_modelo_marca
    @basic.find_element(id:'modelo')
  end

  def campo_ano
    @basic.find_element(id:'ano')
  end

  def campo_placa
    @basic.find_element(id:'placa')
  end

  def campo_kilometragem
    @basic.find_element(id:'km')
  end

  def campo_valor
    @basic.find_element(id:'valor')
  end

  def botao_cadastrar
    @basic.find_element(id:'cadastrar')
  end


end
