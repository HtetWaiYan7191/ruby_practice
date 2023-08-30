require "./animal.rb"
require "./cat.rb"
require "./dog.rb"
require "./spider.rb"
require "./owner.rb"
require "./visit.rb"
require "./vet.rb"

class App
  def main
    animal_1 = Animal.new('dog', 4, 'Riko')
    animal_2 = Animal.new('cat', 4, 'Meow')

    dog = Dog.new("black", "Rax")
    spider = Spider.new(85, "Bob")

    vet_maria = Vet.new("Maria", "New York")
    vet_john = Vet.new("John", "San Francisco")

    visit_1 = Visit.new("2017-12-22", dog, vet_maria)
    visit_2 = Visit.new("2017-12-31", dog, vet_maria)

    puts "Dog's visit count: #{dog.visits.count}"
    puts "Dog's visit dates: #{dog.visits.map { |visit| visit.date }}"
    puts "John's vet visit count: #{vet_john.visits.count}"
    puts "Maria's vet visit count: #{vet_maria.visits.count}"
    puts "Maria's vet visit animal names: #{vet_maria.visits.map { |visit| visit.animal.name }}"

    visit_3 = Visit.new("2017-11-11", spider, vet_john)
    visit_4 = Visit.new("2017-10-10", spider, vet_maria)

    puts "Spider's visit count: #{spider.visits.count}"
    puts "Spider's visit dates: #{spider.visits.map { |visit| visit.date }}"
    puts "John's vet visit count: #{vet_john.visits.count}"
    puts "John's vet visit animal names: #{vet_john.visits.map { |visit| visit.animal.name }}"
    puts "Maria's vet visit count: #{vet_maria.visits.count}"
    puts "Maria's vet visit animal names: #{vet_maria.visits.map { |visit| visit.animal.name }}"
  end
end

app = App.new
app.main
