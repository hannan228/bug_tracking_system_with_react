class Bug < ApplicationRecord
    validates :bug_type, presence: true
end
