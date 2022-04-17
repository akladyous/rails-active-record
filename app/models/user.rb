class User < ApplicationRecord
    belongs_to :company

    belongs_to  :supervisor,    class_name: "User", optional: true
    has_many    :subordinates,  class_name: "User", foreign_key: "supervisor_id"

    scope :supervisor_role, -> { where( supervisor: nil) }
    scope :all_roles, -> { unscope(where: :supervisor) }
    scope :subordinates_role, -> { where.not( supervisor: nil )}


end