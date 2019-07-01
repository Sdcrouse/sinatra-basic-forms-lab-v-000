class Puppy
  attr_accessor :name, :breed, :months_old
  alias_method :age, :months_old
  alias_method :age=, :months_old=
  
  def initialize(puppy_attributes)
    puppy_attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    
    # Note: I can't use attr_reader if I do this (otherwise, #var_name= won't be defined).
    # Also, writer methods are needed for the puppy's name and age, anyway.
  end
end