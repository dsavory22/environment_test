# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'that lady'
    fill_in 'Price', with: 12.58
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    

  end

  scenario 'valid author' do 
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'that lady'
    fill_in 'Price', with: 12.58
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('that lady')
  end

  scenario 'valid price' do 
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'that lady'
    fill_in 'Price', with: 12.58
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('that lady')
  end

  scenario 'valid date' do 
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'that lady'
    fill_in 'Price', with: 12.58
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2022')
  end

end