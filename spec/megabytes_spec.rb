# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Megabytes" do
  it "formats filesizes" do
    h = Megabytes
    expect(h.megabytes(123)).to eq("123.0B")
    expect(h.megabytes(8096)).to eq("7.91KB")
    expect(h.megabytes(898_218_921)).to eq("856.61MB")
    expect(h.megabytes(4_588_758_874_555_558)).to eq("4.08PB")
  end
end
