class Bert

  def initialize(lat, long, name)
    @name = name
    @coordinate = CLLocationCoordinate2D.new
    @coordinate.latitude = lat
    @coordinate.longitude = long
  end

  def title; @name; end
  def coordinate; @coordinate; end

end
