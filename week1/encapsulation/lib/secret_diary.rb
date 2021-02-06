class Diary

  def initialize
    @locked = true
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  private

  def locked?
    @locked == true ? true : false
  end

end

class DiaryEntries < Diary
  def add_entry
    raise("diary is locked") if locked?
  end

  def get_entries
    raise("diary is locked") if locked?
  end
end
