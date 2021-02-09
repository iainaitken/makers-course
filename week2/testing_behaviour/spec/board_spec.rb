describe Board do

  describe 'display' do
    it 'user can see board on screen' do
      expect { subject.display }.to output(/   \n   \n   /).to_stdout
    end
  end

  describe 'place' do
    it 'user can place a counter on the board' do
      subject.place(0, 0, "X")
      expect { subject.display }.to output(/X  \n   \n   /).to_stdout
    end
  end

end
