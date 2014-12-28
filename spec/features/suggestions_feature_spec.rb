require 'rails_helper'

feature 'suggestions' do

  context 'no suggestions have been added' do
    
    scenario 'should display a prompt to add a suggestion' do
      visit '/suggestions'
      expect(page).to have_content 'Be the first to make a suggestion'
      expect(page).to have_link 'Add a suggestion'
    end

  end

end