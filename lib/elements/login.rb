module Xero

  module Login

    URL = 'login.xero.com'

    def self.open
      browser.goto(URL)
    end

    def self.open?
      browser.url.include? URL
    end

    def self.complete_form(user, password)
      browser.text_field(id: 'email', name: 'userName').set user
      browser.text_field(id: 'password', name: 'password').set password
      browser.link(id: 'submitButton', class: 'x-btn blue main').click
    end

  end

end
