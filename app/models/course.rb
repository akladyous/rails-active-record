class Course < ApplicationRecord
    has_and_belongs_to_many :students, counter_cache: true

    enum status: [:active, :inactive, :out_dated, :dropped],
end
