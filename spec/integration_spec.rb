require('spec_helper')

describe("the venues path", {type: :feature}) do
  it("adds a venue to the venue list") do
    visit("/venues")
    click_link("Add venue")
    fill_in("name", :with => "Greek Theater")
    click_button("Go")
    expect(page).to have_content("Greek Theater")
  end
end

describe("the bands path", {type: :feature}) do
  it('adds a band to the band list') do
    visit('/bands')
    click_link("Add band")
    fill_in("name", :with => "Pearl Jam")
    click_button("Go")
    expect(page).to have_content("Pearl Jam")
  end
end
