feature 'Testing form fill in' do

  scenario 'Page fill in' do
    visit('/')
    fill_in 'player_1', with: "Sundar"
    fill_in 'player_2', with: "Tom"
    click_button 'Submit'
    expect(page).to have_content('Sundar vs Tom')
  end
end
