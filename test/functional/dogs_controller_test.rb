require 'test_helper'

class DogsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Dog.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Dog.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Dog.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to dog_url(assigns(:dog))
  end

  def test_edit
    get :edit, :id => Dog.first
    assert_template 'edit'
  end

  def test_update_invalid
    Dog.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Dog.first
    assert_template 'edit'
  end

  def test_update_valid
    Dog.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Dog.first
    assert_redirected_to dog_url(assigns(:dog))
  end

  def test_destroy
    dog = Dog.first
    delete :destroy, :id => dog
    assert_redirected_to dogs_url
    assert !Dog.exists?(dog.id)
  end
end
