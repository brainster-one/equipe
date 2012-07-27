class Team
  include ActiveAttr::Model
  attribute :name
  validates_presence_of :name
end