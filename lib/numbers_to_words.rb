def translate_number(input)
  numbers = {0 => '', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
  tens = {20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

  if input < 20
    numbers[input]
  elsif input < 100
    ("#{tens[input - input % 10]}" + ' ' + "#{numbers[input % 10]}").strip
  elsif input < 1000
    ("#{numbers[(input - input % 100) / 100]}" + ' hundred ' + "#{translate_number(input % 100)}").strip
  elsif input < 1000000
    "#{translate_number((input - input % 1000) / 1000)}" + ' thousand ' + "#{translate_number(input % 1000)}"
  elsif input < 1000000000
    "#{translate_number((input - input % 1000000) / 1000000)}" + ' million ' + "#{translate_number(input % 1000000)}"
  elsif input < 1000000000000
    "#{translate_number((input - input % 1000000000) / 1000000000)}" + ' billion ' + "#{translate_number(input % 1000000000)}"
  end
end