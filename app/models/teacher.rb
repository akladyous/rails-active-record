class Teacher < ApplicationRecord
    belongs_to  :supervisor, class_name: "Teacher", optional: true
    has_many    :subordinates, class_name: "Teacher", foreign_key: "supervisor_id"

    scope :supervisor_role, -> { where(supervisor: nil) }
    scope :all_teachers, -> { unscope(where: :supervisor) }
    scope :subordinates_role, -> { where.not(supervisor: nil) }

end
