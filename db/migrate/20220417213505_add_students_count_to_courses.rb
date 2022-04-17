class AddStudentsCountToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :students_count, :integer, default: 0

    reversible do |dir|
        dir.up do
            Course.all.each do |course|
                counter = course.students.size
                course.update_attribute(:students_count, counter)
            end
        end
        dir.down {}
    end
  end
end
