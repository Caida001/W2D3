require 'rspec'
require 'tdd_exercises'

describe "#my_uniq" do
  subject(:array) {[7, 8, 5, 8, 5, 876, 7]}

  it "should return an array of unique elements" do
    expect(array.my_uniq).to eq([7, 8, 5, 876])
  end

  # it "should be an array" do
  #   expect(array.my_uniq).to be(Array)
  # end
end

describe "#two_sum" do
  subject (:array) {[-1, 0, 2, -2, 1]}

  it "should any positions where the sum of two elements equal zero" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

  it "should return the smaller element before the larger element" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

end

describe "#my_transpose" do
  subject (:array) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  it "the length of the array should be three" do
    expect(array.my_transpose.length).to eq(3)
  end

  it "should transpose the original array" do
    expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe "#stock_picker" do
  subject (:array) {[90,20,30,80,60,10]}
                    #[-10, 4] [60, 4] ,50,-20,-50]
    it "should return the best day to buy" do
      expect(array.stock_picker).to eq([1,3])
    end

    it "should not let you sell your stock before you buy" do
      expect(array.stock_picker[0] >= array.stock_picker[1]).to eq(false)
    end

    it "array length should not be greater than two" do
      expect(array.stock_picker.length).to eq(2)
    end

end
