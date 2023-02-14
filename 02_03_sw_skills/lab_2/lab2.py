class Singleton:
    count = 0
    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Singleton, cls).__new__(cls)
            cls.instance.initialize_once()
        return cls.instance

    def __init__(self):
        self.count += 1
        print(self.count)
        print("INIT")


    def initialize_once(self):
        print("initialize once")

    def do_something(self):
        print("do something")

a = Singleton()
b = Singleton()

assert id(a) == id(b)
print(id(a))
print(id(b))


a.do_something()
b.do_something()

# When you run it, why does the assert not throw an error?
"""
since the id function is finding the in-memory reference value of a variable,
the assert function here should only return True here if both a and b are held
in memory in the same location, essentially making them the same variable. This is 
because the Singleton class will check to see if the class is already 
instantiated somewhere else before holding a new object in memory.
"""

# When you run the script, notice you see two INIT messages, why?
"""
Every time the Singleton class is called, we initialize the object. 
Since the print statement is in the __init__() command, for both variables
a and b the print statement is called so it appears twice. 
"""

# Now focus on thefunction called init_once and it's print statement.
# Only one print statement from this function shows up when you run the script. Why not 2?
"""
Since the second time we initialize the Singleton object there already is an
instance of the class in memory, we do not pass the gate in the "if" statement
in the __new__() method. This means we should only see that print statement when
we build a Singleton object that isn't already in memory.
"""

# Note the count = 0 just below the class declaration
# The __init__ function increments the count every time it is called.
# Why is the printout of this variable 1, then 2, and not 1, 1 instead?
"""
Because the __init__ function was called twice, once for variable a and 
once again for variable b. In the first, the __new__ function checked to see
if there was an instance running already. Since there wasn't, we started a new instance.

The second time, we set the b variable to the same spot in memory as the a variable,
making them the same instance of the object. As a result of the second variable,
we called __init__ a second time on the same instance so count was incremented by 1
instead of being reset with a new instance. 
"""

# Testing Question
# What happens when set up the conditions so the test runs and fails? Do you see the printout?
"""
Here I saw that the test, when run and failing, will show the print statement as expected in the console. 
However, I also noticed that when skipped, the print statement does not become visible. Likewise, the print
statement is also not visible when the test is performed but passes. So these print statements appear to be
focused on failures, making them useful for debugging. 
"""