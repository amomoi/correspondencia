require "test_helper"

class LockerclientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lockercliente = lockerclientes(:one)
  end

  test "should get index" do
    get lockerclientes_url
    assert_response :success
  end

  test "should get new" do
    get new_lockercliente_url
    assert_response :success
  end

  test "should create lockercliente" do
    assert_difference('Lockercliente.count') do
      post lockerclientes_url, params: { lockercliente: { nome_empresa: @lockercliente.nome_empresa, site: @lockercliente.site } }
    end

    assert_redirected_to lockercliente_url(Lockercliente.last)
  end

  test "should show lockercliente" do
    get lockercliente_url(@lockercliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_lockercliente_url(@lockercliente)
    assert_response :success
  end

  test "should update lockercliente" do
    patch lockercliente_url(@lockercliente), params: { lockercliente: { nome_empresa: @lockercliente.nome_empresa, site: @lockercliente.site } }
    assert_redirected_to lockercliente_url(@lockercliente)
  end

  test "should destroy lockercliente" do
    assert_difference('Lockercliente.count', -1) do
      delete lockercliente_url(@lockercliente)
    end

    assert_redirected_to lockerclientes_url
  end
end
