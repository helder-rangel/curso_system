require 'test_helper'

class EntregaAtividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrega_atividade = entrega_atividades(:one)
  end

  test "should get index" do
    get entrega_atividades_url, as: :json
    assert_response :success
  end

  test "should create entrega_atividade" do
    assert_difference('EntregaAtividade.count') do
      post entrega_atividades_url, params: { entrega_atividade: { atividade_id: @entrega_atividade.atividade_id, link: @entrega_atividade.link, user_id: @entrega_atividade.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show entrega_atividade" do
    get entrega_atividade_url(@entrega_atividade), as: :json
    assert_response :success
  end

  test "should update entrega_atividade" do
    patch entrega_atividade_url(@entrega_atividade), params: { entrega_atividade: { atividade_id: @entrega_atividade.atividade_id, link: @entrega_atividade.link, user_id: @entrega_atividade.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy entrega_atividade" do
    assert_difference('EntregaAtividade.count', -1) do
      delete entrega_atividade_url(@entrega_atividade), as: :json
    end

    assert_response 204
  end
end
