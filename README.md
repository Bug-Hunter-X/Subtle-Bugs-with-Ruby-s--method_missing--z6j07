# Ruby's `method_missing`: A Source of Subtle Bugs

This repository demonstrates a common yet easily overlooked issue in Ruby: the misuse of the `method_missing` method. While powerful for dynamic method creation, it can mask real errors and introduce unexpected behavior if not implemented correctly.

The `bug.rb` file showcases an example where `method_missing` catches any undefined method calls, printing a message but silently continuing.  This might prevent a developer from discovering actual errors in their code.

The `bugSolution.rb` file offers a more robust approach, raising a `NoMethodError` to explicitly signal the presence of an undefined method. This makes debugging considerably easier.

This example highlights the importance of carefully considering the use of `method_missing` and prioritizing clear error handling.