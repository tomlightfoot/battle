def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: "Sundar"
  fill_in 'player_2', with: "Tom"
  click_button 'Submit'
end

def attack_and_continue
  click_button 'Attack'
  click_button 'Continue'
end
