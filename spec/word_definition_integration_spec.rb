require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word/definition pathways', {:type => :feature}) do
  describe('adding words and routing') do
    it('route to the word form from index') do
      visit('/')
      click_link('Add a Word')
      expect(page).to(have_content('Enter in a Word'))
    end
  end
end
