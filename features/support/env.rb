# frozen_string_literal: true
require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'
require 'webdrivers'
require 'selenium-webdriver'
require 'appium_lib_core'
require 'rubygems'
require 'pry'
require 'rspec'

include RSpec::Matchers

caps = Appium.load_appium_txt(
	file: File.expand_path('../../appium.txt', __dir__), verbose: true
)

wait = Selenium::WebDriver::Wait.new(:timeout => 10)

driver = Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { driver.start_driver } 

After { driver.driver_quit }