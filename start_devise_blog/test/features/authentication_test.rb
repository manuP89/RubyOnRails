require "test_helper"

class AuthenticationTest < Capybara::Rails::TestCase
  # test "sanity" do
    # visit root_path
    # assert_content page, "Hello World"
    # refute_content page, "Goobye All!"
  # end
  
  test "a registered user can log in" do
    user = User.create email: 'example@example.com', password: '123123123'
    visit root_path
    
    assert_content page, 'Log In'
    
    click_link 'Log In'
    
    within '#new_user' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      
      click_button 'Log in'
    end
    
    assert_content page, 'Log Out'
  end
  
end
