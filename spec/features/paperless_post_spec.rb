require 'rails_helper'

feature 'search_the_web', js: true do

  scenario 'search_google' do
    visit 'http://google.com'
    fill_in "q", :with => "Paperless Post"
    click_link 'Paperless Post: Custom cards and invitations'
    expect(page).to have_css '.svg-logo-full'
    expect_url_includes 'paperlesspost'
  end

  scenario 'search_yahoo' do
    visit 'http://yahoo.com'
    fill_in "p_13838465-p", :with => "Paperless Post"
    click_button "Search Web"
    click_link 'Paperless Post - Official Site'
    within_window(page.driver.browser.window_handles.last) do 
      expect(page).to have_css '.svg-logo-full'
      expect_url_includes 'paperlesspost'
    end
  end

  # scenario 'search_bing' do
  #   visit 'http://bing.com'
  #   fill_in "q", :with => "Paperless Post"
  #   find('.go').click
  #   click_link 'Paperless Post - Official Site'
  #   expect(page).to have_css '.svg-logo-full'
  #   expect_url_includes 'paperlesspost'
  # end
end

# Go to Google.
# Search for "Paperless Post"
# Assert that the first result is our home page by visiting it.
# Do the same thing in Yahoo and Bing.
# Keep track of how long it takes you. Feel free to look things up as you need to.