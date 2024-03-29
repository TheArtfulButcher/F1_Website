require "application_system_test_case"

class TracksTest < ApplicationSystemTestCase
  setup do
    @track = tracks(:one)
  end

  test "visiting the index" do
    visit tracks_url
    assert_selector "h1", text: "Tracks"
  end

  test "creating a Track" do
    visit tracks_url
    click_on "New Track"

    fill_in "Laplength", with: @track.lapLength
    fill_in "Laps", with: @track.laps
    fill_in "Name", with: @track.name
    fill_in "Racelength", with: @track.raceLength
    click_on "Create Track"

    assert_text "Track was successfully created"
    click_on "Back"
  end

  test "updating a Track" do
    visit tracks_url
    click_on "Edit", match: :first

    fill_in "Laplength", with: @track.lapLength
    fill_in "Laps", with: @track.laps
    fill_in "Name", with: @track.name
    fill_in "Racelength", with: @track.raceLength
    click_on "Update Track"

    assert_text "Track was successfully updated"
    click_on "Back"
  end

  test "destroying a Track" do
    visit tracks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Track was successfully destroyed"
  end
end
