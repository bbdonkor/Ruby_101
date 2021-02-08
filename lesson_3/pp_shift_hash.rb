flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintedstones = flintstones.keep_if {|k, v| v == 2 }

p flintedstones


# OR THE BELOW


# flintstones.assoc("Barney")
#=> ["Barney", 2]