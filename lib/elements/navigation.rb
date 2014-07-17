module Xero

  module Navigation

    def showing_company?
      browser.div(id: 'xero-nav').h2(class: 'org-name').exist?
    end

    def self.get_company_name
      browser.div(id: 'xero-nav').h2(class: 'org-name').text
    end

  end

end
