// general utility functions


fun flatten(mm : maybe<maybe<a>>) : maybe<a>
  mm.maybe(Nothing, id)
