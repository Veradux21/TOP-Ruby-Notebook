# ruby_learning_projects
## Project 1: Caesar Cipher
> In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Implement a function that applies a Caesar cipher to a string when given a shift factor:
```ruby
caesar_cipher(string, shift_factor)
```

Additional considerations:
    - Need to be able to wrap from z to a
    - Need to persist case.