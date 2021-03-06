# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   REQUIRE_UTILITY 'uniclogs_test'
#
# Test Runner test script
class UniclogsTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("UNICLOGS COMMAND")
    wait_check("UNICLOGS STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class UniclogsSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('UniclogsTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
