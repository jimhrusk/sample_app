require 'spec_helper'

# original
#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end

# Hartl Listing 3.9 page 115 7/8/2016
describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

    # Hartl Listing 3.12 page 120 7/8/2016
    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
      end

      it "should have the title 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      end

      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
      end
    end

  # Hartl (add about page) Listing 3.14 page 122 7/8/2016
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end