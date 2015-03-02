class Hash
  def define_reader(key)
    define_method(key) do
      if has_key?(key)
        return self[key]
      else
        return self[key.to_sym]
      end
    end
  end

  def define_writer(key)
    define_method(key) do |value|
      self[key[0..-2].to_sym] = value
    end
  end

  def method_missing(method, *opts)
    m = method.to_s
    msym = m.to_sym

    if m[-1] == '='
      define_writer(m)
      return self.send(method, opts)
    elsif has_key?(m) || has_key?(msym)
      define_reader(m)
      return self.send(method, opts)
    else
      super
    end
  end
end
