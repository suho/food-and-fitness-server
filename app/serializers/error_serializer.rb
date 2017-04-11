module ErrorSerializer
  def self.serialize(object)
    return if object.errors.nil?
    json = {}
    new_hash = object.errors.to_hash(true).map do |k, v|
      v.map do |msg|
        { key: k, value: msg }
      end
    end.flatten
    json[:errors] = new_hash
    json
  end
end