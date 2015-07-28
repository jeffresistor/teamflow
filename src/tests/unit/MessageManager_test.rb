require 'minitest/autorun'
require_relative '../../web/model/MessageManager.rb'

class TestMessageManager < MiniTest::Test

  def setup
    @mgr = MessageManager.new
  end

  def test_that_message_manager_returns_a_global_hash
    # setup initializes $messages in global scope, so just check it exists and is empty
    assert_equal(0, $messages.length)
  end

  def test_that_i_can_add_a_message_with_key
    @mgr.add_message_with_key('test_message_key', 'This is a test message')
    assert_equal('This is a test message', $messages['test_message_key'])
  end

end
