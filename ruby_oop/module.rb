module ModuleA
    def dummy
        puts "Dummy from module A "
    end
end

module ModuleB
    def dummy
        puts "Dummy from module B"
    end
end

class Worker
    include ModuleA
    include ModuleB
    def run
        dummy
    end
end

w = Worker.new
w.run