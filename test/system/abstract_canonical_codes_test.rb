require "application_system_test_case"

class AbstractCanonicalCodesTest < ApplicationSystemTestCase
  setup do
    @abstract_canonical_code = abstract_canonical_codes(:one)
  end

  test "visiting the index" do
    visit abstract_canonical_codes_url
    assert_selector "h1", text: "Abstract Canonical Codes"
  end

  test "creating a Abstract canonical code" do
    visit abstract_canonical_codes_url
    click_on "New Abstract Canonical Code"

    fill_in "Code", with: @abstract_canonical_code.code
    fill_in "Sha digest", with: @abstract_canonical_code.sha_digest
    click_on "Create Abstract canonical code"

    assert_text "Abstract canonical code was successfully created"
    click_on "Back"
  end

  test "updating a Abstract canonical code" do
    visit abstract_canonical_codes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @abstract_canonical_code.code
    fill_in "Sha digest", with: @abstract_canonical_code.sha_digest
    click_on "Update Abstract canonical code"

    assert_text "Abstract canonical code was successfully updated"
    click_on "Back"
  end

  test "destroying a Abstract canonical code" do
    visit abstract_canonical_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abstract canonical code was successfully destroyed"
  end
end
