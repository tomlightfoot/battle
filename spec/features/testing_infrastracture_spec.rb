feature 'Testing form fill in' do
  scenario 'Page fill in' do
    sign_in_and_play
    expect(page).to have_content('Sundar vs Tom')
  end
end

feature 'View hitpoints' do
  scenario 'View player_2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Tom: 60hp')
  end
end

feature 'Attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Sundar attacked Tom')
  end
end
