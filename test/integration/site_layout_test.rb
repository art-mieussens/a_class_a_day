require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "home page layout" do
    get root_path
    assert_template 'home/index'
    assert_select 'title', SITE_TITLE
    assert_select 'header'
    assert_select 'section.user-menu'
    assert_select 'main'
    assert_select 'main article', 2
  end
end