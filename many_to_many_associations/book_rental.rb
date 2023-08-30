class Person 
    attr_accessor :name, :age, :rentals
    def initialize(name, age)
      @name = name
      @age = age
      @rentals = []
    end 
  
    def add_rent(date, book)
        Rent.new(date, self, book)
     
    end
  end
  
  class Book  
    attr_accessor :author, :title, :rentals
    def initialize(author, title)
      @author = author
      @title = title
      @rentals = []
    end
  
    def add_rent(date, person)
     Rent.new(date, person, self)
     
    end
  end
  
  class Rent  
    attr_reader :date, :person, :book
    def initialize(date, person, book)
      @date = date
      @person = person
      @book = book
  
      person.rentals << self
      book.rentals << self
    end
  end
  
  htetwaiyan = Person.new('htetwaiyan', 21)
  harry_potter = Book.new('JK Rowling', 'Harry Potter')
  
  htetwaiyan.add_rent('2020/12/1', harry_potter)
  puts htetwaiyan.rentals.map { |rent| rent.book.title }
  puts harry_potter.rentals.map { |rent| rent.person.name }
  