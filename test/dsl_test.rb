require 'test_helper'
require 'rake'

class DSLTest < Minitest::Test
  include RakeMultifile::DSL

  def test_multifile_task
    multifile 'foo'

    task = Rake::Task['foo']
    assert !task.nil?
    assert_equal 'foo', task.name
  end

end
