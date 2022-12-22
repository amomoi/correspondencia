require "application_system_test_case"

class LockerusuariosTest < ApplicationSystemTestCase
  setup do
    @lockerusuario = lockerusuarios(:one)
  end

  test "visiting the index" do
    visit lockerusuarios_url
    assert_selector "h1", text: "Lockerusuarios"
  end

  test "creating a Lockerusuario" do
    visit lockerusuarios_url
    click_on "New Lockerusuario"

    fill_in "Celular", with: @lockerusuario.celular
    fill_in "Cpf", with: @lockerusuario.cpf
    fill_in "Email", with: @lockerusuario.email
    fill_in "Nome", with: @lockerusuario.nome
    fill_in "Senha", with: @lockerusuario.senha
    click_on "Create Lockerusuario"

    assert_text "Lockerusuario was successfully created"
    click_on "Back"
  end

  test "updating a Lockerusuario" do
    visit lockerusuarios_url
    click_on "Edit", match: :first

    fill_in "Celular", with: @lockerusuario.celular
    fill_in "Cpf", with: @lockerusuario.cpf
    fill_in "Email", with: @lockerusuario.email
    fill_in "Nome", with: @lockerusuario.nome
    fill_in "Senha", with: @lockerusuario.senha
    click_on "Update Lockerusuario"

    assert_text "Lockerusuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Lockerusuario" do
    visit lockerusuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lockerusuario was successfully destroyed"
  end
end
