def print_once
    yield
end

def greet
    return 'no block given' unless  block_given?
    yield
end

def call_proc(&my_proc)
    my_proc.call
end

count = 1 
def call_proc_two(&block)
    count = 500
    block.call
end



my_proc_two = Proc.new {puts count}
puts call_proc_two(&my_proc_two)
