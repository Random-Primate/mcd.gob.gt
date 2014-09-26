describe 'the login process', :type => :feature do
  before(:each) do
    user = FactoryGirl.build(:user)
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Submit'
    expect(page).to have_content 'Success'
  end
end