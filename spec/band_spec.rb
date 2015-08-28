require('spec_helper')

describe(Band) do
  it('validates the presence of a name') do
    test_band = Band.new({:name => ""})
    expect(test_band.save()).to(eq(false))
  end
end
