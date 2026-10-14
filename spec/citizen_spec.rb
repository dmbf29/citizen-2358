require_relative "../citizen"

# describe -> class
# describe -> method name
# it -> describing in Engligh
# expect -> call the method and compare

describe Citizen do
  describe '#initialize' do
    it 'should create an instance of a Citizen' do
      citizen = Citizen.new('Charles', 'Collins', 21)
      expect(citizen).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should return false if the age is less than 18' do
      citizen = Citizen.new('Charles', 'Collins', 17)
      expect(citizen.can_vote?).to eq(false)
    end

    it 'should return true if the age is greater or equal to 18' do
      citizen = Citizen.new('Charles', 'Collins', 19)
      expect(citizen.can_vote?).to eq(true)
    end
  end

  describe '#full_name' do
    it 'should return a capitalize full name from first and last' do
      citizen = Citizen.new('charles', 'collins', 19)
      expect(citizen.full_name).to eq('Charles Collins')
    end
  end
end
