class NoteList

  def initialize
    @list = []
  end

  def add(title, body)
    entry = create_entry(title, body)
    @list.push(entry)
  end

  def view
    @list
  end

  private

  def create_entry(title, body)
    @entry = { title: title, body: body}
    return @entry
  end
end
