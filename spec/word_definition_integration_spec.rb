require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word/definition pathways', {:type => :feature}) do
  describe('process user input and reroute page') do
    it('user enters a word and it displays to the page') do
      visit('/')
      fill_in('word_name', :with => 'fallow')
      click_button('Submit')
      click_link('Back')
      expect(page).to(have_content('fallow'))
    end

    it('routes to definition page from word list link') do
      visit('/')
      click_link('fallow')
      expect(page).to(have_content('Definition'))
    end
  end
end
