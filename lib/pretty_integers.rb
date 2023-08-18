class Integer
  # changes numbers like 1234567 to "1,234,567"
  def prettify(sep=',')
    self
      .to_s
      .chars
      .reverse
      .each_slice(3)
      .map{|slice| slice.join }
      .join(sep)
      .reverse
  end
end
