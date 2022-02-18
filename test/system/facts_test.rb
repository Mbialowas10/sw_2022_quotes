require "application_system_test_case"

class FactsTest < ApplicationSystemTestCase
  setup do
    @fact = facts(:one)
  end

  test "visiting the index" do
    visit facts_url
    assert_selector "h1", text: "Facts"
  end

  test "should create fact" do
    visit facts_url
    click_on "New fact"

    fill_in "Character", with: @fact.character
    fill_in "Droid", with: @fact.droid
    fill_in "Planet", with: @fact.planet
    fill_in "Quote", with: @fact.quote
    click_on "Create Fact"

    assert_text "Fact was successfully created"
    click_on "Back"
  end

  test "should update Fact" do
    visit fact_url(@fact)
    click_on "Edit this fact", match: :first

    fill_in "Character", with: @fact.character
    fill_in "Droid", with: @fact.droid
    fill_in "Planet", with: @fact.planet
    fill_in "Quote", with: @fact.quote
    click_on "Update Fact"

    assert_text "Fact was successfully updated"
    click_on "Back"
  end

  test "should destroy Fact" do
    visit fact_url(@fact)
    click_on "Destroy this fact", match: :first

    assert_text "Fact was successfully destroyed"
  end
end
