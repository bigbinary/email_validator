class EmailValidator < ActiveModel::EachValidator

  def self.valid?(email)
    email =~ regex
  end

  def self.regex
    /^\S+@\S+\.\S+$/i
  end

  def validate_each(record, attribute, value)
    unless self.class.valid?(value)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
