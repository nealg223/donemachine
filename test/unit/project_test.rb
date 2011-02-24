require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  fixtures :projects
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "project attributes must not be empty" do
    project = Project.new
    assert project.invalid?
    assert project.errors[:title].any?
    assert project.errors[:description].any?
  end
  
  test "project is not valid without a unique title" do
    project = Project.new(:title       => projects(:ruby).title,
                          :description => "yyy")

    assert !project.save
    assert_equal "has already been taken", project.errors[:title].join('; ')
  end
  
  test "project is not valid without a unique title - i18n" do
    project = Project.new(:title       => projects(:ruby).title,
                          :description => "yyy")

    assert !project.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'),
                 project.errors[:title].join('; ')
  end
end
