require "test_helper"

class LockerusuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lockerusuario = lockerusuarios(:one)
  end

  test "should get index" do
    get lockerusuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_lockerusuario_url
    assert_response :success
  end

  test "should create lockerusuario" do
    assert_difference('Lockerusuario.count') do
      post lockerusuarios_url, params: { lockerusuario: { celular: @lockerusuario.celular, cpf: @lockerusuario.cpf, email: @lockerusuario.email, nome: @lockerusuario.nome, senha: @lockerusuario.senha } }
    end

    assert_redirected_to lockerusuario_url(Lockerusuario.last)
  end

  test "should show lockerusuario" do
    get lockerusuario_url(@lockerusuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_lockerusuario_url(@lockerusuario)
    assert_response :success
  end

  test "should update lockerusuario" do
    patch lockerusuario_url(@lockerusuario), params: { lockerusuario: { celular: @lockerusuario.celular, cpf: @lockerusuario.cpf, email: @lockerusuario.email, nome: @lockerusuario.nome, senha: @lockerusuario.senha } }
    assert_redirected_to lockerusuario_url(@lockerusuario)
  end

  test "should destroy lockerusuario" do
    assert_difference('Lockerusuario.count', -1) do
      delete lockerusuario_url(@lockerusuario)
    end

    assert_redirected_to lockerusuarios_url
  end
end
