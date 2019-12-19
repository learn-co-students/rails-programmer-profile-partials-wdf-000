class Programmer < ActiveRecord::Base

  def formatted_attribute(attribute)
    attribute.to_s.split("_").collect{|word| word.capitalize}.join(" ")
  end

  def attribute_value(attribute)
    "#{self.send(attribute)}"
  end

end
