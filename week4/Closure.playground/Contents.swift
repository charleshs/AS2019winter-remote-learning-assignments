
func closureDemo(_ input: Int, function: (Int) -> Bool) {
  function(input)
}

closureDemo(3, function: {
  (input: Int) -> Bool in
  return input % 2 == 1
})
