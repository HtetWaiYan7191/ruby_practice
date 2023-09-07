class A
    def method1
        puts "public method from #{self.class}"
    end

    private
    def method2
        puts "private method from #{self.class}"
    end
end

class B < A
    def test
        method2
    end
end

b = B.new
b.test