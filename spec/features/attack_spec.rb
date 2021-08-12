feature 'attacking' do
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play_and_attack
    expect(page).to have_content "SuperHans attacks Darth Vader and deals 10 damage"
  end

  scenario "player 1's attack reduces player 2's health by 10" do
    sign_in_and_play_and_attack
    click_button("go_back")
    expect(page).to have_content "Darth Vader HP: 40"
  end
end