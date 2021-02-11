require 'diary'

describe Diary do
  let(:diary) { Diary.new }

  describe '#add' do
    let(:entry_double) { double(:entry, :title => "Saturday 4th", :body => "Slept a lot") }
    let(:entry_class_double) { double(:entry_class, :new => entry_double ) }

    before(:each) do
      diary.add("Saturday 4th", "Slept a lot")
    end

    it 'adds an entry to the diary' do
      expect(diary.index).to include "Saturday 4th"
    end
  end
end

describe Entry do
  let(:entry) { Entry.new("Saturday 4th", "Slept a lot") }

  it 'contains a title' do
    expect(entry.title).to eq "Saturday 4th"
  end

  it 'contains a body' do
    expect(entry.body).to eq "Slept a lot"
  end
end
