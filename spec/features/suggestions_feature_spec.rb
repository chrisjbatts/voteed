require 'rails_helper'

feature 'suggestions' do

  context 'no suggestions have been added' do
    
    scenario 'should display a prompt to add a suggestion' do
      visit '/suggestions'
      expect(page).to have_content 'No suggestions'
      expect(page).to have_link 'Add a suggestion'
    end

  end

end