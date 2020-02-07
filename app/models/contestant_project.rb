class ContestantProject <ApplicationRecord
    # validates_presence_of :
    has_many :contestants
    has_many :projects
end
