module Xero

  def initialize_browser(browser)
    @@browser = Watir::Browser.new browser
  end

  def browser
    @@browser
  end

end
