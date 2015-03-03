class Hash
  def define_reader(key)
    define_singleton_method(key.to_sym) do
      if has_key?(key)
        return self[key]
      else
        return self[key.to_sym]
      end
    end
  end

  def define_writer(key)
    define_singleton_method(key.to_sym) do |value|
      self[key[0..-2].to_sym] = value
    end
  end

  def method_missing(method, *opts)
    m = method.to_s

    if m[-1] == '='
      define_writer(m)
      return self.send(method, *opts)
    else
      define_reader(m)
      return self.send(method, *opts)
    end
  end
end
