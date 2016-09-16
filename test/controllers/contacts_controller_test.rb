require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  def test_contact
    get :show
    assert_response :success
  end
end
