def minilang(input_str)
  input_arr = input_str.split
  register = [0]
  stack = []
  input_arr.each { |arg| menu(arg, register, stack) }
end

def menu(arg, register, stack)
  case arg
  when /[0-9]/ then number(arg, register)
  when 'PUSH' then my_push(register, stack)
  when 'ADD' then stack.empty? ? empty_stack_error : add(register, stack)
  when 'SUB' then stack.empty? ? empty_stack_error : subtract(register, stack)
  when 'MULT' then stack.empty? ? empty_stack_error : multiply(register, stack)
  when 'DIV' then stack.empty? ? empty_stack_error : divide(register, stack)
  when 'MOD' then stack.empty? ? empty_stack_error : mod(register, stack)
  when 'POP' then stack.empty? ? empty_stack_error : my_pop(register, stack)
  when 'PRINT' then my_print(register)
  else no_method_error(arg)
  end
end

def number(arg, register)
  register[0] = arg.to_i
end

def my_push(register, stack)
  stack << register[0]
end

def add(register, stack)
  register[0] += stack.pop
end

def subtract(register, stack)
  register[0] -= stack.pop
end

def multiply(register, stack)
  register[0] *= stack.pop
end

def divide(register, stack)
  register[0] /= stack.pop
end

def mod(register, stack)
  register[0] %= stack.pop
end

def my_pop(register, stack)
  register[0] = stack.pop
end

def my_print(register)
  puts register
end

def no_method_error(arg)
  puts "Error: Invalid token encountered: #{arg}"
  exit
end

def empty_stack_error
  puts "Error: Cannot perform operation on empty stack."
  exit
end

minilang('PRINT')
puts
minilang('5 PUSH 3 MULT PRINT')
puts
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts
minilang('5 PUSH POP PRINT')
puts
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
puts
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
puts
minilang('-3 PUSH 5 SUB PRINT')
puts
minilang('6 PUSH')
puts
#minilang('7 PUSH WHUT 8')
puts
minilang('7 ADD PRINT')
