describe 'the login process', :type => :feature do
  before :each do
    User.create(:email => 'user@example.com', :password => 'caplin')
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'caplin'
    end
    click_button 'Submit'
    expect(page).to have_content 'Success'
  end
end