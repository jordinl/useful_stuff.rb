# useful_stuff.rb
Useful Ruby stuff that doesn't deserve its own gem.

## [Convert an array of hashes to CSV](array_of_hashes.rb)

```ruby
array = [{ column_1: 'Value 1-1', column_2: 'Value 1-2' },
         { column_1: 'Value 2-1', column_3: 'Value 2-3' },
         { column_2: 'Value 3-2', column_3: 'Value 2-3' }]

ArrayOfHashes(array).to_csv

#=> "column_1,column_2,column_3\nValue 1-1,Value 1-2,\nValue 2-1,,Value 2-3\n,Value 3-2,Value 2-3\n"
```

## [Increase wait time for slow specs](slow.rb)

```ruby
it "does something that is very slow", :slow do
  # do something that takes a while                  
end
```
