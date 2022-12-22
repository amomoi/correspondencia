require "application_system_test_case"

class LockerclientesTest < ApplicationSystemTestCase
  setup do
    @lockercliente = lockerclientes(:one)
  end

  test "visiting the index" do
    visit lockerclientes_url
    assert_selector "h1", text: "Lockerclientes"
  end

  test "creating a Lockercliente" do
    visit lockerclientes_url
    click_on "New Lockercliente"

    fill_in "Nome empresa", with: @lockercliente.nome_empresa
    fill_in "Site", with: @lockercliente.site
    click_on "Create Lockercliente"

    assert_text "Lockercliente was successfully created"
    click_on "Back"
  end

  test "updating a Lockercliente" do
    visit lockerclientes_url
    click_on "Edit", match: :first

    fill_in "Nome empresa", with: @lockercliente.nome_empresa
    fill_in "Site", with: @lockercliente.site
    click_on "Update Lockercliente"

    assert_text "Lockercliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Lockercliente" do
    visit lockerclientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lockercliente was successfully destroyed"
  end
end
