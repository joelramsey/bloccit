require 'rails_helper'

decribe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect( @vote.to_i ).to eq(1) || eq(-1)
      end
    end
  end
end