require 'rails_helper'

feature 'suggestions' do

  context 'no suggestions have been added' do

    scenario 'should prompt the visitor to register and add a suggestion' do
      visit '/'
      expect(page).to have_content 'No suggestions have been added yet'
      expect(page).to have_link 'Register and add a suggestion'
    end
  
  end

end