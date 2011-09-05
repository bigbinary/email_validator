class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^\S+@\S+\.\S+$/i
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
