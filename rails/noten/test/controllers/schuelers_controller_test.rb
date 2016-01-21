require 'test_helper'

class SchuelersControllerTest < ActionController::TestCase
  setup do
    @schueler = schuelers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schuelers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schueler" do
    assert_difference('Schueler.count') do
      post :create, schueler: { email: @schueler.email, geburtsdatum: @schueler.geburtsdatum, name: @schueler.name, passwort: @schueler.passwort, vorname: @schueler.vorname }
    end

    assert_redirected_to schueler_path(assigns(:schueler))
  end

  test "should show schueler" do
    get :show, id: @schueler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schueler
    assert_response :success
  end

  test "should update schueler" do
    patch :update, id: @schueler, schueler: { email: @schueler.email, geburtsdatum: @schueler.geburtsdatum, name: @schueler.name, passwort: @schueler.passwort, vorname: @schueler.vorname }
    assert_redirected_to schueler_path(assigns(:schueler))
  end

  test "should destroy schueler" do
    assert_difference('Schueler.count', -1) do
      delete :destroy, id: @schueler
    end

    assert_redirected_to schuelers_path
  end
end
