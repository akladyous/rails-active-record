class Course < ApplicationRecord
    has_and_belongs_to_many :students, counter_cache: true

end
