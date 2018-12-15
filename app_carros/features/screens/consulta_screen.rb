require_relative '../screens/basic_screen.rb'

class ConsultaScreen

  def initialize
    @basic = Basic.new
  end

  def lista_carros
    @basic.find_element(id:'listaCarros')
  end

  def campo_placa
    @basic.find_element(id:'placa')
  end

  def find_content_list(conteudo)
    conteudo_lista = self.campo_placa.text
      until conteudo_lista == conteudo
          if conteudo_lista.include? conteudo
            @basic.click_element(conteudo)
          break
          else
            @basic.scroll_location(conteudo)
            conteudo_lista = self.campo_placa.text
          end
       end
    end
end
