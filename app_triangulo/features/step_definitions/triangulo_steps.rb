Dado("que eu informe os três lados com medidas iguais") do
  is_keyboard_shown == true
  driver.find_element(id:'txtLado1').click
  driver.find_element(id:'txtLado1').send_keys(10)
  driver.find_element(id:'txtLado2').click
  driver.find_element(id:'txtLado2').send_keys(10)
  driver.find_element(id:'txtLado3').click
  driver.find_element(id:'txtLado3').send_keys(10)
  end
  
Quando("clicar no botão calcular") do
  driver.find_element(id:'btnCalcular').click
  end
  
Entao("validar triângulo equilátero") do
    expect(driver.find_element(id:'txtResultado').text).to eq('O triângulo é Equilátero')
  end


Dado("que eu informe os dois lados com medidas iguais") do
  driver.find_element(id:'txtLado1').click
  driver.find_element(id:'txtLado1').send_keys(10)
  driver.find_element(id:'txtLado2').click
  driver.find_element(id:'txtLado2').send_keys(10)
  driver.find_element(id:'txtLado3').click
  driver.find_element(id:'txtLado3').send_keys(5)
  end
  
Entao("validar triângulo isósceles") do
  expect(driver.find_element(id:'txtResultado').text).to eq('O triângulo é Isósceles')
  end
  

  
Dado("que eu informe os três lados com medidas diferentes") do
  driver.find_element(id:'txtLado1').click
  driver.find_element(id:'txtLado1').send_keys(10)
  driver.find_element(id:'txtLado2').click
  driver.find_element(id:'txtLado2').send_keys(8)
  driver.find_element(id:'txtLado3').click
  driver.find_element(id:'txtLado3').send_keys(5)
  end
  
Entao("validar triângulo escaleno") do
  expect(driver.find_element(id:'txtResultado').text).to eq('O triângulo é Escaleno')
  end