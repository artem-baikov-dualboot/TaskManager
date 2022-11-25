require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'create' do
    task = create(:task)
    assert task.persisted?
  end

  test 'task develop' do
    task = create(:task)
    assert task.develop
    assert task.state == 'in_development'
  end
end
