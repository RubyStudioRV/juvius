require 'test_helper'

class WorkproductsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Workproduct.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Workproduct.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Workproduct.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to workproduct_url(assigns(:workproduct))
  end

  def test_edit
    get :edit, :id => Workproduct.first
    assert_template 'edit'
  end

  def test_update_invalid
    Workproduct.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Workproduct.first
    assert_template 'edit'
  end

  def test_update_valid
    Workproduct.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Workproduct.first
    assert_redirected_to workproduct_url(assigns(:workproduct))
  end

  def test_destroy
    workproduct = Workproduct.first
    delete :destroy, :id => workproduct
    assert_redirected_to workproducts_url
    assert !Workproduct.exists?(workproduct.id)
  end
end
