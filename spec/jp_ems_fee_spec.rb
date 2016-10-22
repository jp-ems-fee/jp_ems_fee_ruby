require "spec_helper"

describe JpEmsFee do
  it "has a version number" do
    expect(JpEmsFee::VERSION).not_to be nil
  end

  it 'working method asia' do
    expect(JpEmsFee.asia(1)).to eq 1400
    expect(JpEmsFee.asia(30000)).to eq 26500
  end

  it 'working method oceania' do
    expect(JpEmsFee.oceania(1)).to eq 2000
    expect(JpEmsFee.oceania(30000)).to eq 36500
  end

  it 'working method europa' do
    expect(JpEmsFee.europa(1)).to eq 2200
    expect(JpEmsFee.europa(30000)).to eq 42600
  end

  it 'working method africa' do
    expect(JpEmsFee.africa(1)).to eq 2400
    expect(JpEmsFee.africa(30000)).to eq 69700
  end
end
