module roman

import std/os/file
import std/os/path
import std/core/int

import lib


pub fun romanToInt(roman : string) : maybe<int>
  Nothing


pub fun intToRoman(n : int) : maybe<string>
  Just("")


// testing

fun test()
  val romanData = load-roman-data()

  romanData.foreach fn((n, roman))
    check(Just(n) == romanToInt(roman))
    check(Just(roman) == intToRoman(n))

  return ()


fun load-roman-data() : _ list<(int, string)>
  val data_file = read-text-file("./roman_data.txt".path)
  val data = data_file.split("\n")
    .filter-map(fn(line)
      if line == "" then return Nothing

      val components = line.split(" ")

      val dec_comp = components[0].unjust
      val rom_comp = components[1].unjust

      return (dec_comp.parse-int.unjust, rom_comp).Just
    )
  return data


fun check(
  condition : bool,
  message : string = "check failed"
) : <exn> ()
  if !condition then throw(message)

