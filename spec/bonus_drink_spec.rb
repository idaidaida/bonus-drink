require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  it "returns 0 if the number of purchases is 0" do
    expect(BonusDrink.total_count_for(0)).to eq 0
  end

  it "returns 1 if the number of purchases is 1" do
    expect(BonusDrink.total_count_for(1)).to eq 1
  end
  
  it "returns 4 if the number of purchases is 3" do
    expect(BonusDrink.total_count_for(3)).to eq 4
  end

  it "returns 16 if the number of purchases if 11" do
    expect(BonusDrink.total_count_for(11)).to eq 16
  end
end