require 'watir'
browser = Watir::Browser.new(:firefox)
browser.goto 'duckduckgo.com'
search_bar = browser.text_field(id: 'search_form_input_homepage')
search_bar.set("Hello World!")
submit_button = browser.button(id: 'search_button_homepage')
submit_button.click
browser.driver.manage.timeouts.implicit_wait = 10
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }
browser.close
