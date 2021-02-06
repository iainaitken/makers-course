require 'secret_diary'

describe Diary do

  it 'diary is locked initially' do
    subect = Diary.new
    entries = DiaryEntries.new
    expect { entries.add_entry }.to raise_error("diary is locked")
    expect { entries.get_entries }.to raise_error("diary is locked")
  end

  it 'allows user to unlock diary' do
    subject = Diary.new
    entries = DiaryEntries.new
    entries.unlock
    expect { entries.add_entry }.to_not raise_error
    expect { entries.get_entries }.to_not raise_error
  end

  it 'allows user to lock diary' do
    subect = Diary.new
    entries = DiaryEntries.new
    entries.unlock
    entries.lock
    expect { entries.add_entry }.to raise_error("diary is locked")
    expect { entries.get_entries }.to raise_error("diary is locked")
  end

end
