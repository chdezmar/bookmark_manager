feature 'sign out' do

  before(:each) do
    User.create(email: 'test@test.com',
                password: 'test',
                password_confirmation: 'test')
    end

  scenario 'With correct credentials' do
    sign_in(email: 'test@test.com', password: 'test')
    click_button('Sign out')
    expect(page).to have_content("Goodbye")
    expect(page).not_to have_content("Welcome, test@test.com")
  end
end
