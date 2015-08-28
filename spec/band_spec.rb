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
end
