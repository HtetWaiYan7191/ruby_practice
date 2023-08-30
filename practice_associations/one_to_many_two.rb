class Person
    attr_accessor :name, :age, :gmails
    def initialize(name, age)
        @name = name
        @age = age
        @gmails = []
    end

    def add_gmail(gmail)
        gmails << gmail
        gmail.person = self
    end
end

class Gmail
    attr_accessor :name, :useage, :person
    def initialize(name, useage)
        @name = name
        @useage = useage
        @person = nil
    end
end

htetwaiyan = Person.new('htetwaiyan', 21)
gmail_fb = Gmail.new('fbGmail', 'facebook')
insta_fb = Gmail.new('instGmail', 'instagram')
htetwaiyan.add_gmail(gmail_fb)
htetwaiyan.add_gmail(insta_fb)
puts htetwaiyan.gmails.map { |gmail| puts "Gmail Name: #{gmail.name} Useage: #{gmail.useage}"}
puts htetwaiyan.gmails.length