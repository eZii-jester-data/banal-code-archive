require 'test_helper'

class AbstractCanonicalCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abstract_canonical_code = abstract_canonical_codes(:one)
  end

  test "should get index" do
    get abstract_canonical_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_abstract_canonical_code_url
    assert_response :success
  end

  test "should create abstract_canonical_code" do
    assert_difference('AbstractCanonicalCode.count') do
      post abstract_canonical_codes_url, params: { abstract_canonical_code: { code: @abstract_canonical_code.code, sha_digest: @abstract_canonical_code.sha_digest } }
    end

    assert_redirected_to abstract_canonical_code_url(AbstractCanonicalCode.last)
  end

  test "should show abstract_canonical_code" do
    get abstract_canonical_code_url(@abstract_canonical_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_abstract_canonical_code_url(@abstract_canonical_code)
    assert_response :success
  end

  test "should update abstract_canonical_code" do
    patch abstract_canonical_code_url(@abstract_canonical_code), params: { abstract_canonical_code: { code: @abstract_canonical_code.code, sha_digest: @abstract_canonical_code.sha_digest } }
    assert_redirected_to abstract_canonical_code_url(@abstract_canonical_code)
  end

  test "should destroy abstract_canonical_code" do
    assert_difference('AbstractCanonicalCode.count', -1) do
      delete abstract_canonical_code_url(@abstract_canonical_code)
    end

    assert_redirected_to abstract_canonical_codes_url
  end
end
