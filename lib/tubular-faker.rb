module TubularFaker

  GENERAL = {
    adjectives: ["Awesome", "Tubular", "Radical", "Mega", "Bomb", "Tight", "Dope", "Chillin'", "Rockin' Rappin'", "Cowabunga", "Far Out", "Whatever", "Booyah", "Hasta la Vista", "Fly", "Phat", "Wild and Crazy", "Bogus", "Busted", "Mondo", "Exactamundo", "Tubuloso", "Rad", "Wicked", "Hella", "Gnarly", "Cyber", "Nuclear", "Grunge", "Creepy", "Spooky", "Absolute", "Total", "Extreme", "Bummer", "l33t"],
    numbers: ["2K", "64", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "360", "180", "69", "1001", "3000", "311", "94", "95", "96", "97", "98", "99", "666", "667", "1337"]
  }
  NAMES = {
    first_names: ["Kurt", "Eddie", "Dylan", "2Pac", "Mariah", "Madonna", "Bono", "The Notorious", "Janet", "Thom", "Tre", "Lauryn", "Lars", "Ice", "Vanilla", "Snoop", "Trent", "Beck", "Alanis", "Axl", "Bjork", "Gwen", "Prince", "Whitney", "Tori", "Ani", "Missy", "Seal", "Gavin", "Sinead", "Coolio", "Krist", "Courtney", "Sheryl", "Busta", "Hootie", "Sarah Michelle", "Neve", "Heather", "Luke", "Mark-Paul", "Melissa Joan", "Calista", "Tiffani", "River", "Blossom", "Clarissa", "Balki", "Frasier", "Regis", "Geraldo", "Beavis", "Butthead", "Roseanne", "Screech", "MacGyver", "Chandler", "Bart", "Zack", "Billy", "Kevin", "Jessica", "Uma"],
    last_names: ["Cobain", "Vedder", "Corgan", "Shakur", "Carey", "Bono", "Dre", "Kiedis", "B.I.G.", "Jackson", "Cool J.", "Ulrich", "Cube", "Ice", "Dogg", "Reznor", "Blige", "Rza", "Morissette", "Rose", "Latifah", "Stefani", "Houston", "DiFranco", "Amos", "Weiland", "Rossdale", "Manson", "Phair", "Grohl", "Novaselic", "Love", "Crow", "Rhymes", "Loder", "Clooney", "Aniston", "Gellar", "Duchovny", "Stamos", "Locklear", "Priestley", "Perry", "Doherty", "Gosselaar", "Taylor Thomas", "Lawless", "Applegate", "Soprano", "Flockhart", "Sorbo", "Love Hewitt", "Cosby", "Elfman", "Brandis", "Phoenix", "Pickles", "Carrey", "Kramer", "Seinfeld", "Simpson", "Urkel"]
  }
  ADDRESSES = {
    city_prefix: ["North", "East", "West", "South", "New", "Lake", "Port"],
    city_suffix: ["town", "land", "ville", "berg", "view", "furt", "chester", "haven", "shire"]
  }
  COMPANIES = {
    products: ["Juice", "Soakers", "Beans", "3D", "Dudes", "Dudettes", "Babies", "Cards", "Net", "Cereal", "Pogs", "Soda", "Beepers", "IIGS", "Headphones", "Sneakers", "Arcade", "Body Splash", "Shimmer", "Trolls", "Flannel", "Boots", "Jewels", "Stickers", "Tapes", "Scrunchies", "Beanies", "Applets", "Frames", "Dot-Com", "Superhighway", "Netiquette", "Screensavers", "Virtual Reality", "BBS", "Hot Links", "Snax"]
  }

  INTERNET = {
    domains: ["aol", "hotmail", "geocities", "tripod", "angelfire", "earthlink"],
    dot: [".com", ".net"],
    pages: ["index", "applet", "hotlinks", "guestbook", "homepage", "website", "cyber", "fanpage", "chatroom"]
  }

  def self.name
    "#{NAMES[:first_names].sample} #{NAMES[:last_names].sample}"
  end

  def self.company
    "#{GENERAL[:adjectives].sample} #{COMPANIES[:products].sample}"
  end

  def self.city
    "#{ADDRESSES[:city_prefix].sample} #{GENERAL[:adjectives].sample}#{ADDRESSES[:city_suffix].sample}"
  end

  def self.url
    "http://www.#{INTERNET[:domains].sample}#{INTERNET[:dot].sample}/#{NAMES[:first_names].sample.downcase.strip}#{GENERAL[:numbers].sample}/#{INTERNET[:pages].sample}.html"
  end

end

puts TubularFaker.url