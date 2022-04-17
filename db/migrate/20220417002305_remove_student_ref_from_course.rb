class RemoveStudentRefFromCourse < ActiveRecord::Migration[7.0]
  def change
    remove_reference :courses, :student, index: true, foreign_key: true
  end
end
