require 'note'

describe Note do
  let(:formatter_double) { double(:formatter, :format => "Title: Shopping\nMilk") }
  let(:note) { Note.new("Shopping", "Milk", formatter_double) }

  describe '#display' do
    it 'prints the content of the note' do
      expect(note.display).to eq"Title: Shopping\nMilk"
    end
  end
end

describe NoteFormatter do
  let(:formatter) { NoteFormatter.new }

  describe '#format' do
    let(:note_double) { double("note", :title => "Shopping", :body => "Milk") }
    it 'prints title first, then body' do
      expect(formatter.format(note_double)).to eq("Title: Shopping\nMilk")
    end
  end
end
