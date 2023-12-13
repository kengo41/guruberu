module KeywordExtension
  def keyword
    @keyword
  end

  def keyword=(value)
    @keyword = value
  end
end

GooglePlaces::Spot.include(KeywordExtension)
