class Hash
  def method_missing(method, *opts)
    m = method.to_s
    msym = m.to_sym
    if self.has_key?(m)
      return self[m]
    elsif self.has_key?(msym)
      return self[msym]
    end
    super
  end
end
