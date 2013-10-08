class Library
  attr_accessor :name

  def initialize (name)
    @name = name
    @shelf = []
  end

  def add_book(book)
    @shelf << book
    @shelf.index(book)
  end

  def get_book(book_id)
    @shelf[book_id]
  end

  def get_all_books
    @shelf.compact
  end

  def remove_book(book_id)
    book = @shelf[book_id]
    @shelf[book_id] = nil
    book
  end

end
