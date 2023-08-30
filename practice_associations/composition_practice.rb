class Library 
    attr_accessor :name, :books
    def initialize(name)
        @name = name
        @books = []
    end

    def add_book(author, name)
        book = Book.new(author, name)
        books << book
    end
end

class Book
    attr_accessor :author, :name, :permission
    def initialize(author, name, permission:true)
        @author = author
        @name = name
        @permission = permission
    end
end

master_library = Library.new('Master')
master_library.add_book("htet", "lord of the rings" )
master_library.add_book("may", "the beginning after the end")

master_library.books.map {|book| puts "Title: #{book.name}"}