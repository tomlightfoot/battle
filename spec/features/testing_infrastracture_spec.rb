feature 'Testing form fill in' do
  scenario 'Page fill in' do
    sign_in_and_play
    expect(page).to have_content('Sundar vs Tom')
  end
end

feature 'View hitpoints' do
  scenario 'View player_2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Sundar: 100hp || Tom: 100hp')
  end
end

feature 'Attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Sundar attacked Tom')
  end

  scenario 'Display reduced HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Sundar: 100hp || Tom: 90hp')
  end

  scenario 'Return to play for second attack' do
    sign_in_and_play
    attack_and_continue
    expect(page). to have_content('Battle!')
  end
end

feature 'Switching turns' do
  scenario 'It switches turns' do
    sign_in_and_play
    attack_and_continue
    click_button 'Attack'
    expect(page).to have_content('Sundar: 90hp || Tom: 90hp')
  end
end

feature 'Game end' do
  scenario 'Ends the game' do
    sign_in_and_play
    19.times { attack_and_continue }
    expect(page).to have_content('Tom is dead, Sundar wins')
  end
end
