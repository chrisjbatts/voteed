require 'rails_helper'

feature 'suggestions' do

  context 'no suggestions have been added' do
    
    scenario 'should display a prompt to add a suggestion' do
      visit '/suggestions'
      expect(page).to have_content 'No suggestions to display at the moment.'
      expect(page).to have_link 'Suggest an improvement'
    end

  end

  context 'Suggestions have been added' do
    before do
      Suggestion.create(overview: 'Add a dislike button', description: 'I really wish facebook had a dislike button for posts, pictures and videos')
    end

    scenario 'display restaurants' do
      save_and_open_page
      visit '/suggestions'
      expect(page).to have_content('Add a dislike button')
      expect(page).not_to have_content('Be the first to make a suggestion')
    end

  end

  context 'adding suggestions' do

    scenario 'gives the user some bits and bobs to fill out, then shows the suggestion' do
      visit '/suggestions'
      click_link 'Suggest an improvement'
      fill_in 'Overview', with: 'Add a dislike button'
      fill_in 'Description', with: 'I really wish facebook had a dislike button for posts, pictures and videos'
      click_button 'Suggest it'
      expect(page).to have_content 'Add a dislike button I really wish facebook had a dislike button for posts, pictures and videos'
      expect(current_path).to eq '/suggestions'
    end

  end

end