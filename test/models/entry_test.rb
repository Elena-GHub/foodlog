require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with all valid and compulsory attributes" do
    entry = Entry.new(meal_type: "lunch", calories: 500, proteins: 10, carbohydrates: 100, fats: 5)
    assert entry.save
  end

  test "should not save entry without meal_type" do
    entry = Entry.new(calories: 400, proteins: 10, carbohydrates: 100, fats: 5)
    assert_not entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "lunch", proteins: 10, carbohydrates: 100, fats: 5)
    assert_not entry.save
  end

  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "lunch", calories: 400, carbohydrates: 100, fats: 5)
    assert_not entry.save
  end
  test "should not save entry without carbohydates" do
    entry = Entry.new(meal_type: "lunch", calories: 400, proteins: 10, fats: 5)
    assert_not entry.save
  end

  test "should not save entry without fats" do
    entry = Entry.new(meal_type: "lunch", calories: 400, proteins: 10, carbohydrates: 100)
    assert_not entry.save
  end
end
