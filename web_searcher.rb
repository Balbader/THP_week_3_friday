require 'watir'

browser = Watir::Browser.new(:firefox)
browser.goto 'duckduckgo.com'

search_bar = browser.text_field(id: 'search_form_input_homepage')

search_bar.set(ARGV.join(" "))
if ARGV == nil
  browser.close
end

submit_button = browser.button(id: 'search_button_homepage')
submit_button.click

browser.driver.manage.timeouts.implicit_wait = 5

search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }

browser.close

=begin
  add this line in your ~/.bash_profile to look cool in front of your friends
  when they ask you to show off your hacking skills *__*

  alias search="ruby /home/path/file_name.rb"

  restart your terminal and type in your magic alias and let the magic happen :)
=end
