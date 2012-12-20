require 'test_helper'

class AnimeControllerTest < ActionController::TestCase
  setup do
    @anime = anime(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anime)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anime" do
    assert_difference('Anime.count') do
      post :create, anime: @anime.attributes
    end

    assert_redirected_to anime_path(assigns(:anime))
  end

  test "should show anime" do
    get :show, id: @anime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anime
    assert_response :success
  end

  test "should update anime" do
    put :update, id: @anime, anime: @anime.attributes
    assert_redirected_to anime_path(assigns(:anime))
  end

  test "should destroy anime" do
    assert_difference('Anime.count', -1) do
      delete :destroy, id: @anime
    end

    assert_redirected_to anime_index_path
  end
end
