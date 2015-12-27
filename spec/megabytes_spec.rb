require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Megabytes" do
  it "formats filesizes" do
    h = Megabytes
    expect(h.megabytes(123)).to eq("123.0B")
    expect(h.megabytes(8096)).to eq("7.91KB")
    expect(h.megabytes(898218921)).to eq("856.61MB")
    expect(h.megabytes(4588758874555558)).to eq("4.08PB")
  end
end
