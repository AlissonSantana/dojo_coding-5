#language:pt
#utf-8

Funcionalidade: Validar Triangulo
    Eu como sistema intermediario
    Quero validar os tipos de triangulos disponiveis
    Para informar as diferentes medidas

@equilatero
Cenário: Validar Triângulo Equilátero
Dado que eu informe os três lados com medidas iguais
Quando clicar no botão calcular 
Entao validar triângulo equilátero   

@isosceles
Cenário: Validar Triângulo Isósceles
Dado que eu informe os dois lados com medidas iguais
Quando clicar no botão calcular 
Entao validar triângulo isósceles 

@escaleno
Cenário: Validar Triângulo Escaleno
Dado que eu informe os três lados com medidas diferentes
Quando clicar no botão calcular 
Entao validar triângulo escaleno  