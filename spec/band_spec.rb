require('spec_helper')

describe(Band) do
  it('validates the presence of a name') do
    test_band = Band.new({:name => ""})
    expect(test_band.save()).to(eq(false))
  end

  it('capitalizes the first letter of each word in the name') do
    test_band = Band.create({:name => "pearl jam"})
    expect(test_band.name()).to(eq("Pearl Jam"))
  end

  describe('#venues') do
    it('lists all of venues the band has played at') do
      test_band = Band.create({:name => "pearl jam"})
      test_venue = Venue.create({:name => "moda center"})
      test_band.venues.push(test_venue)
      expect(test_band.venues()).to(eq([test_venue]))
    end
  end
end
