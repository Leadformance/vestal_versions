require File.expand_path('../test_helper', __FILE__)

class Rails3Test < Test::Unit::TestCase
  context 'update_attributes vs update_attribute in rails 3' do
    setup do
      @user = User.create(:first_name => 'Stephen')
    end

    should 'create a version using update_attributes' do
      @user.update_attributes(:first_name => 'Paul')
      assert_equal 2, @user.version
    end

    should 'create a version using update_attribute' do
      @user.update_attribute(:first_name, 'Paul')
      assert_equal 2, @user.version
    end
  end
end
