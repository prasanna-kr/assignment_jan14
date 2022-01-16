require "application_system_test_case"

class StudentMarksTest < ApplicationSystemTestCase
  setup do
    @student_mark = student_marks(:one)
  end

  test "visiting the index" do
    visit student_marks_url
    assert_selector "h1", text: "Student Marks"
  end

  test "creating a Student mark" do
    visit student_marks_url
    click_on "New Student Mark"

    fill_in "M1", with: @student_mark.m1
    fill_in "M2", with: @student_mark.m2
    fill_in "M3", with: @student_mark.m3
    fill_in "Student", with: @student_mark.student_id
    fill_in "Total", with: @student_mark.total
    click_on "Create Student mark"

    assert_text "Student mark was successfully created"
    click_on "Back"
  end

  test "updating a Student mark" do
    visit student_marks_url
    click_on "Edit", match: :first

    fill_in "M1", with: @student_mark.m1
    fill_in "M2", with: @student_mark.m2
    fill_in "M3", with: @student_mark.m3
    fill_in "Student", with: @student_mark.student_id
    fill_in "Total", with: @student_mark.total
    click_on "Update Student mark"

    assert_text "Student mark was successfully updated"
    click_on "Back"
  end

  test "destroying a Student mark" do
    visit student_marks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student mark was successfully destroyed"
  end
end
