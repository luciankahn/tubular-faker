module Tubular

  NAMES = {
    first_names: ["Kurt", "Eddie", "Dylan", "2Pac", "Mariah", "Madonna", "Bono", "The Notorious", "Janet", "Thom", "Tre", "Lauryn", "Lars", "Ice", "Vanilla", "Snoop", "Trent", "Beck", "Alanis", "Axl", "Bjork", "Gwen", "Prince", "Whitney", "Tori", "Ani", "Missy", "Seal", "Gavin", "Sinead", "Coolio", "Krist", "Courtney", "Sheryl", "Busta", "Hootie", "Sarah Michelle", "Neve", "Heather", "Luke", "Mark-Paul", "Melissa Joan", "Calista", "Tiffani", "River", "Blossom", "Clarissa", "Balki", "Frasier", "Regis", "Geraldo", "Beavis", "Butthead", "Roseanne", "Screech", "MacGyver", "Chandler", "Bart", "Zack", "Billy", "Kevin", "Jessica", "Uma"],
    last_names: ["Cobain", "Vedder", "Corgan", "Shakur", "Carey", "Bono", "Dre", "Kiedis", "B.I.G.", "Jackson", "Cool J.", "Ulrich", "Cube", "Ice", "Dogg", "Reznor", "Blige", "Rza", "Morissette", "Rose", "Latifah", "Stefani", "Houston", "DiFranco", "Amos", "Weiland", "Rossdale", "Manson", "Phair", "Grohl", "Novaselic", "Love", "Crow", "Rhymes", "Loder", "Clooney", "Aniston", "Gellar", "Duchovny", "Stamos", "Locklear", "Priestley", "Perry", "Doherty", "Gosselaar", "Taylor Thomas", "Lawless", "Applegate", "Soprano", "Flockhart", "Sorbo", "Love Hewitt", "Cosby", "Elfman", "Brandis", "Phoenix", "Pickles", "Carrey", "Kramer", "Seinfeld", "Simpson", "Urkel"]
  }
  COMPANIES = {
    adjectives: ["Awesome", "Tubular", "Radical", "Mega", "Bomb", "Tight", "Dope", "Chillin'", "Rockin' Rappin'", "Cowabunga", "Far Out", "Whatever", "Booyah", "Hasta la Vista", "Fly", "Phat", "Wild and Crazy", "Bogus", "Busted", "Mondo", "Exactamundo", "Tubuloso", "Rad", "Wicked", "Hella", "Gnarly", "Cyber", "Nuclear", "Grunge", "Creepy", "Spooky"],
    nouns: ["Juice", "Soakers", "Beans", "3D", "Dudes", "Dudettes", "Babies", "Cards", "Net", "Cereal", "Pogs", "Soda", "Beepers", "IIGS", "Headphones", "Sneakers", "Arcade", "2K", "64", "Body Splash", "Shimmer", "Trolls", "Flannel", "Boots", "Jewels", "Stickers", "Tapes", "Scrunchies", "Beanies"]
  }

  def self.name
    "#{NAMES[:first_names].shuffle.pop} #{NAMES[:last_names].shuffle.pop}"
  end

  def self.company
    "#{COMPANIES[:adjectives].shuffle.pop} #{COMPANIES[:nouns].shuffle.pop}"
  end

end


puts Tubular.name
puts Tubular.company

puts Tubular.name
puts Tubular.company