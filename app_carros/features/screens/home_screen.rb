require_relative '../screens/basic_screen.rb'

class HomeScreen

  def initialize
    @basic = Basic.new
  end

  def label_titulo
    @basic.find_element(id: 'textView6')
  end

  def botao_cadastro
    @basic.find_element(id: 'cadastrar')
  end

  def botao_consulta
    @basic.find_element(id: 'consulta')
  end
end
