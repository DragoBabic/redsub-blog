require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    def setup
      @category = Category.create(name: "sports")
    end

    test "should get categories index" do
      get "/categories"
      assert_response :success
    end

    test "should get categories new" do
      get "/categories/new"
      assert_response :success
    end

    test "should get categories show" do
      get "/categories/:id(@category)"
      assert_response :success
    end
end
