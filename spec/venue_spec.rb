require('spec_helper')

describe(Venue) do
  it('validates the presence of a name') do
    test_venue = Venue.new({:name => ""})
    expect(test_venue.save()).to(eq(false))
  end

  it('capitalizes the first letter of each word in the name') do
    test_venue = Venue.create({:name => "moda center"})
    expect(test_venue.name()).to(eq("Moda Center"))
  end

  describe('#bands') do
    it('lists all of bands the venue has hosted') do
      test_band = Band.create({:name => "pearl jam"})
      test_venue = Venue.create({:name => "moda center"})
      test_venue.bands.push(test_band)
      expect(test_venue.bands()).to(eq([test_band]))
    end
  end
end
