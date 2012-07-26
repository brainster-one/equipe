class Team
  extend ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::Conversion

  validates_presence_of :name
  attr_accessor :name

  def initialize(attributes = {})
  	return if attributes.nil?
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end  
end