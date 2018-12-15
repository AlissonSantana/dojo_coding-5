require 'rspec'
require 'appium_lib'
require 'pry'
require 'faker'
require 'selenium-webdriver'

#Setar Device
$device = 'samsung'
$base_devices = YAML.load_file('./config/devices.yaml')['devices'][$device]

#Setar Emulador
$emulators = 'Nexus5'
$base_emulators = YAML.load_file('./config/emulators.yaml')['emulators'][$emulators]


#Driver para rodar os teste nos Devices ou Emulators
Appium::Driver.new($base_emulators)
Appium.promote_appium_methods Object
