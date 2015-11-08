# COMMENTS: In Python, a single-line comment starts with the pound sign

''' Multiline comments are surrounded by triple single quotes or triple double quotes.'''

# differences

''' Key differences, Idris vs Python

(1) Idris is a compiled language; Python is interpreted (by default)
(2) Idris uses static type checking; Python uses dynamic type checking
(2.1) Idris type checks when we compile, Python type checks when the code runs
(2.2) Python has no compile stage
(3) Idris values are immutable whereas Python has mutable state
(3.1) Idris values are bound permanently, Python values can be changed later on in the code
(4) Idris is a language of expressinos; Python is a language of commands
(4.1) A command is a state transformer, the state of a computation at a time
      is the state of all the variables at that time
(4.2) Sequential command, a proceedure is a named sequential command
'''

# COMPILED VS INTERPRETED

# STATIC VS DYNAMIC TYPE CHECKING

''' In Idris, every value has a *static* type. This means that types
are knokwn and checked at compile time. One cannot compile a program
with a type error in Idris. There is therefore no need to check for
*dynamic* type errors (i.e., when a program is actually running).
'''

''' In Python, every value has two types: a "static" type, as seen by
the compiler, and a "dynamic" type, as seen when the program actually
runs. The static type of every value in Python is simply "Object." The
upshot is that static type checking isn't helpful in Python, and so it
is not done. You can write, complile, and run code that passes a string
to a function expecting a number and you wono't know there's an error
until you run your program and it issues a runtime type error.
'''

# TYPE CHECKING DEMO

def foo(n):
    return n + 3

print (foo("Hello!"))

# print is a "procedure" that affects the world by printing on console
print("Happy 200th Birthday, George Boole!")

# None -- serves same purposes as both option.none and unit.mkUnit
