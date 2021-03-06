require 'rails_helper'

RSpec.feature 'Visit single post', type: :feature do
    let(:user) { create(:user) }
    let(:category) { create(:category, :study_branch) }
    let(:post) { create(:post, category: category) }
    
    scenario 'User goes to sigle post from homepage', js: true do
        post
        visit root_path
        page.find('.single-post-card').click
        expect(page).to have_selector('body .modal')
        page.find('.interested a').click
        expect(page).to have_selector('#single-post-content p', text: post.content)
    end
end