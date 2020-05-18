require 'rails_helper'

RSpec.describe AgenciesController, type: :controller do

  let(:agency) {
    {:name => "Agency One", :billing_terms => 35, credit_rating: "Good"}
  }

  let(:valid_session) {{}}
  describe "GET #index" do
    it "return a success response" do
      Agency.create! agency
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
      end
    end
  end

RSpec.describe 'Creating an agency', type: :feature do
  scenario 'valid inputs' do
    visit new_agency_path
    within ('#new_agency') do
      fill_in 'agency_name', with: 'Agency TWO'
      fill_in 'agency_billing_terms', with: 45
      select('Good', from: 'agency_credit_rating')
  end
    click_button 'Create Agency'
    visit agencies_path
    expect(page).to have_content('Agency TWO')
  end

  scenario 'invalid inputs' do
    visit new_agency_path
    within ('#new_agency') do
      fill_in 'agency_name', with: ''
      fill_in 'agency_billing_terms', with: 2
      select('Good', from: 'agency_credit_rating')
    end
    click_button 'Create Agency'
    expect(page).to have_content("Name can't be blank")
  end
end

RSpec.describe 'Updating an agency', type: :feature do
  scenario 'valid inputs' do
    agny = Agency.create!(name: 'Agency One', billing_terms: 25, credit_rating: 'Poor')
    visit edit_agency_path(id: agny.id)
      fill_in 'agency_name', with: 'Agency Three'
      click_button 'Update Agency'
      visit agencies_path
      expect(page).to have_content('Agency Three')
    end
  end
