require "application_system_test_case"

class LeiturasTest < ApplicationSystemTestCase
  setup do
    @leitura = leituras(:one)
  end

  test "visiting the index" do
    visit leituras_url
    assert_selector "h1", text: "Leituras"
  end

  test "creating a Leitura" do
    visit leituras_url
    click_on "New Leitura"

    fill_in "Box", with: @leitura.box_id
    fill_in "Envio", with: @leitura.envio
    fill_in "Id page", with: @leitura.id_page
    fill_in "N apto", with: @leitura.n_apto
    fill_in "N encomendas", with: @leitura.n_encomendas
    fill_in "Senha", with: @leitura.senha
    fill_in "Torre", with: @leitura.torre
    click_on "Create Leitura"

    assert_text "Leitura was successfully created"
    click_on "Back"
  end

  test "updating a Leitura" do
    visit leituras_url
    click_on "Edit", match: :first

    fill_in "Box", with: @leitura.box_id
    fill_in "Envio", with: @leitura.envio
    fill_in "Id page", with: @leitura.id_page
    fill_in "N apto", with: @leitura.n_apto
    fill_in "N encomendas", with: @leitura.n_encomendas
    fill_in "Senha", with: @leitura.senha
    fill_in "Torre", with: @leitura.torre
    click_on "Update Leitura"

    assert_text "Leitura was successfully updated"
    click_on "Back"
  end

  test "destroying a Leitura" do
    visit leituras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leitura was successfully destroyed"
  end
end
