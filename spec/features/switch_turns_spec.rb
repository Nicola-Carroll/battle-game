feature 'Switching turns' do

  context 'seeing whose turn it is' do

    scenario "player 1 starts" do
      sign_in_and_play
      expect(page).to have_content "SuperHans's turn"
      expect(page).not_to have_content "Darth Vader's turn"
    end

    scenario "player 1 attacks and the turn switches" do
      sign_in_and_play_and_attack
      click_button('go_back')
      expect(page).to have_content "Darth Vader's turn"
      expect(page).not_to have_content "SuperHans's turn"
    end
  end
end