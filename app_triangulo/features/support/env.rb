require 'rspec'
require 'appium_lib'
require 'pry'
require 'faker'
require 'selenium-webdriver'

#Setar Emulator
$emulators = 'Nexus'
$base_emulators = YAML.load_file('./features/config/emulator.yaml')['emulators'][$emulators]

#Driver para rodar testes no Emulator
Appium::Driver.new($base_emulators)
Appium.promote_appium_methods Object