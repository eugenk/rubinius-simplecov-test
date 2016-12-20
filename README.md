# Foo

This tests the rubinius/simplecov combination.

The test suite hangs after
```
rspec
```

while it finishes if the line

```ruby
SimpleCov.start
```
is removed from the `spec/spec_helper.rb` when running on Rubinius.
