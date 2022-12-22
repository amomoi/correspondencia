require "test_helper"

class StatusBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_box = status_boxes(:one)
  end

  test "should get index" do
    get status_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_status_box_url
    assert_response :success
  end

  test "should create status_box" do
    assert_difference('StatusBox.count') do
      post status_boxes_url, params: { status_box: { ativo_inativo: @status_box.ativo_inativo, box_number: @status_box.box_number, envio: @status_box.envio, id_page: @status_box.id_page, lockercliente_id: @status_box.lockercliente_id, n_apto: @status_box.n_apto, n_encomendas: @status_box.n_encomendas, senha: @status_box.senha, torre: @status_box.torre } }
    end

    assert_redirected_to status_box_url(StatusBox.last)
  end

  test "should show status_box" do
    get status_box_url(@status_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_box_url(@status_box)
    assert_response :success
  end

  test "should update status_box" do
    patch status_box_url(@status_box), params: { status_box: { ativo_inativo: @status_box.ativo_inativo, box_number: @status_box.box_number, envio: @status_box.envio, id_page: @status_box.id_page, lockercliente_id: @status_box.lockercliente_id, n_apto: @status_box.n_apto, n_encomendas: @status_box.n_encomendas, senha: @status_box.senha, torre: @status_box.torre } }
    assert_redirected_to status_box_url(@status_box)
  end

  test "should destroy status_box" do
    assert_difference('StatusBox.count', -1) do
      delete status_box_url(@status_box)
    end

    assert_redirected_to status_boxes_url
  end
end
