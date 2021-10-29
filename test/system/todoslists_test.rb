require "application_system_test_case"

class TodoslistsTest < ApplicationSystemTestCase
  setup do
    @todoslist = todoslists(:one)
  end

  test "visiting the index" do
    visit todoslists_url
    assert_selector "h1", text: "Todoslists"
  end

  test "creating a Todoslist" do
    visit todoslists_url
    click_on "New Todoslist"

    fill_in "Description", with: @todoslist.description
    fill_in "Title", with: @todoslist.title
    click_on "Create Todoslist"

    assert_text "Todoslist was successfully created"
    click_on "Back"
  end

  test "updating a Todoslist" do
    visit todoslists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @todoslist.description
    fill_in "Title", with: @todoslist.title
    click_on "Update Todoslist"

    assert_text "Todoslist was successfully updated"
    click_on "Back"
  end

  test "destroying a Todoslist" do
    visit todoslists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todoslist was successfully destroyed"
  end
end
