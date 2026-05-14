pub fun main()
  val n = 50
  for(1, n + 1) fn(i)
    if i % 3 != 0 && i % 5 != 0 then println(i.show)
    else if i % 3 == 0 && i % 5 != 0 then println("Fizz")
    else if i % 3 != 0 && i % 5 == 0 then println("Buzz")
    else if i % 3 == 0 && i % 5 == 0 then println("FizzBuzz")
  ()
