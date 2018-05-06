require "application_system_test_case"

class ClientworkoutsTest < ApplicationSystemTestCase
  setup do
    @clientworkout = clientworkouts(:one)
  end

  test "visiting the index" do
    visit clientworkouts_url
    assert_selector "h1", text: "Clientworkouts"
  end

  test "creating a Clientworkout" do
    visit clientworkouts_url
    click_on "New Clientworkout"

    fill_in "Client Name", with: @clientworkout.client_name
    fill_in "Date Of Workout", with: @clientworkout.date_of_workout
    fill_in "Duration Mins", with: @clientworkout.duration_mins
    fill_in "Paid Amount", with: @clientworkout.paid_amount
    fill_in "Trainer", with: @clientworkout.trainer
    click_on "Create Clientworkout"

    assert_text "Clientworkout was successfully created"
    click_on "Back"
  end

  test "updating a Clientworkout" do
    visit clientworkouts_url
    click_on "Edit", match: :first

    fill_in "Client Name", with: @clientworkout.client_name
    fill_in "Date Of Workout", with: @clientworkout.date_of_workout
    fill_in "Duration Mins", with: @clientworkout.duration_mins
    fill_in "Paid Amount", with: @clientworkout.paid_amount
    fill_in "Trainer", with: @clientworkout.trainer
    click_on "Update Clientworkout"

    assert_text "Clientworkout was successfully updated"
    click_on "Back"
  end

  test "destroying a Clientworkout" do
    visit clientworkouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clientworkout was successfully destroyed"
  end
end
