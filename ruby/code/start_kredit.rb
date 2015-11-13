require_relative 'kunde'
require_relative 'kredit'
require_relative 'kundendb'


kunde1 = Kunde.new("Theo Sommer")
puts kunde1.kunde_ausgabe
kunde1.name= "Theo Sonnenschein"
puts kunde1.kunde_ausgabe

kunde2 = Kunde.new ("Peter Pan")
# kunde2.add_kunde("Theo Sonnenschein")
# puts kunde1.kunde_ausgabe

kunden = [kunde1, kunde2]

kunde1.gehalt = 2000
puts kunde1.gehalt

kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
puts kunde1.kunde_ausgabe

