def sign_in_and_play
    visit("/")
    fill_in('Player1', with: 'SuperHans')
    fill_in('Player2', with: 'Darth Vader')
    click_button('Submit')
end