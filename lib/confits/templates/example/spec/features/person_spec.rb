feature 'Person' do
  scenario 'User adds person to register' do
    when_a_user_wishes_to_see_their_name_on_a_list
    they_can_add_it_to_the_list
  end

  def when_a_user_wishes_to_see_their_name_on_a_list
    visit new_person_path
    fill_in :person_name, with: FFaker::Name.name
    click_button 'Add'
  end

  def they_can_add_it_to_the_list
    expect(page).to have_content 'Your name has been added'
  end
end
