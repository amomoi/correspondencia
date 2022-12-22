require "application_system_test_case"

class StatusBoxesTest < ApplicationSystemTestCase
  setup do
    @status_box = status_boxes(:one)
  end

  test "visiting the index" do
    visit status_boxes_url
    assert_selector "h1", text: "Status Boxes"
  end

  test "creating a Status box" do
    visit status_boxes_url
    click_on "New Status Box"

    fill_in "Ativo inativo", with: @status_box.ativo_inativo
    fill_in "Box number", with: @status_box.box_number
    fill_in "Envio", with: @status_box.envio
    fill_in "Id page", with: @status_box.id_page
    fill_in "Lockercliente", with: @status_box.lockercliente_id
    fill_in "N apto", with: @status_box.n_apto
    fill_in "N encomendas", with: @status_box.n_encomendas
    fill_in "Senha", with: @status_box.senha
    fill_in "Torre", with: @status_box.torre
    click_on "Create Status box"

    assert_text "Status box was successfully created"
    click_on "Back"
  end

  test "updating a Status box" do
    visit status_boxes_url
    click_on "Edit", match: :first

    fill_in "Ativo inativo", with: @status_box.ativo_inativo
    fill_in "Box number", with: @status_box.box_number
    fill_in "Envio", with: @status_box.envio
    fill_in "Id page", with: @status_box.id_page
    fill_in "Lockercliente", with: @status_box.lockercliente_id
    fill_in "N apto", with: @status_box.n_apto
    fill_in "N encomendas", with: @status_box.n_encomendas
    fill_in "Senha", with: @status_box.senha
    fill_in "Torre", with: @status_box.torre
    click_on "Update Status box"

    assert_text "Status box was successfully updated"
    click_on "Back"
  end

  test "destroying a Status box" do
    visit status_boxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status box was successfully destroyed"
  end
end
