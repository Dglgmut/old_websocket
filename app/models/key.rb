class Key < ApplicationRecord
  def self.return_value_for_key(key_parameter)
    Key.find_by!(key: key_parameter).value
  end
end
