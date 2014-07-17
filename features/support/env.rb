require 'watir-webdriver'
require 'pry'

require './features/support/settings.rb'
require './lib/elements/login.rb'
require './lib/elements/navigation.rb'

include Xero

initialize_browser(:firefox)

at_exit do
  browser.exist? && browser.close
end
