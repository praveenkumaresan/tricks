jq has a concise mini-programming language for selecting and transforming JSON. The most basic expression is the . path selector,
which simply selects the root of the current document. By itself it will work as a pretty-printer:


Array/Object Value Iterator: .[]
       If you use the .[index] syntax, but omit the index entirely, it will return all of the elements of an array. Running .[]
       with the input [1,2,3] will produce the numbers as three separate results, rather than as a single array.

       You can also use this on an object, and it will return all the values of the object.

           jq ´.[]´
              [{"name":"JSON", "good":true}, {"name":"XML", "good":false}]
           => {"name":"JSON", "good":true}, {"name":"XML", "good":false}

           jq ´.[]´
              []
           =>

           jq ´.[]´
              {"a": 1, "b": 1}
           => 1, 1

   .[]?
       Like .[], but no errors will be output if . is not an array or object.



Reference:
https://www.naleid.com/2017/12/17/using-http-apis-on-the-command-line-2-jq.html
