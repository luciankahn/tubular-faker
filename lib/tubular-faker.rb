module TubularFaker

  #### OPTIONS

  ADDRESSES = {
    city_prefix: ["East", "Lake", "New", "North", "Port", "South", "West"],
    city_suffix: ["berg", "chester", "furt", "haven", "land", "shire", "town", "view", "ville"]
  }

  COMPANIES = {
    products: ["3D", "Applets", "Arcade", "BBS", "Babies", "Beanies", "Beans", "Beepers", "Bellybutton Rings", "Body Splash", "Boots", "Cards", "Cereal", "Dot-Com", "Dudes", "Dudettes", "Flannel", "Frames", "Hair Dye", "Headphones", "Hot Links", "IIGS", "Jewels", "Juice", "Net", "Netiquette", "Pogs", "Screensavers", "Scrunchies", "Shimmer", "Snax", "Sneakers", "Soakers", "Soda", "Stickers", "Superhighway", "Tapes", "Trolls", "Virtual Reality"]
  }

  GENERAL = {
    adjectives: ["Absolute", "Awesome", "Biodegradable", "Bogus", "Bomb", "Booyah", "Bummer", "Busted", "Chillin'", "Cowabunga", "Creepy", "Cyber", "Dope", "Emo", Exactamundo", "Extreme", "Far Out", "Fly", "Goth", "Gnarly", "Grunge", "Hasta la Vista", "Hella", "Kewl", "Mega", "Mondo", "Nuclear", "Phat", "Rad", "Radical", "Rockin' Rappin'", "Shady", "Spooky", "Tight", "Total", "Tubular", "Tubuloso", "Whatever", "Wiccan", "Wicked", "Wild and Crazy", "l33t"],
    numbers: ["1001", "1337", "180", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2K", "3000", "311", "360", "64", "666", "667", "69", "94", "95", "96", "97", "98", "99"],
    years: ["1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999"]
  }

  INTERNET = {
    domains: ["angelfire", "aol", "earthlink", "geocities", "hotmail", "tripod"],
    dot: [".com", ".net"],
    pages: ["applet", "chatroom", "cyber", "fanpage", "guestbook", "homepage", "hotlinks", "index", "website"]
  }

  LINGO = {
    catchphrases: ["All that and a bag of chips.", "Allllllrighty then.", "As if!", "Bling bling!", "D'oh!", "Did I do that?", "Don't go there!", "Doy hickey.", "Eat my shorts!", "How's it hangin'?", "I am the great cornholio!", "I see dead people.", "It's all good.", "It's da bomb!", "It's not a tumor.", "Kewl beans.", "L8r sk8r!", "Let's bounce!", "Mad props.", "NOT!", "No duh.", "No soup for you!", "Oh my god, they killed Kenny!", "Oh snap!", "PSYCH!", "Peace out, cub scout!", "Run Forrest, run!", "Scha-wing!", "Score!", "So funny I forgot to laugh.", "So is your FACE.", "Take a chill pill!", "Talk to the hand.", "Then why don't you marry it?", "There's no crying in baseball.", "What up, dawg?", "What's the dillio?", "Yadda yadda yadda.", "Yoink!", "You go girl!", "You got it, dude.", "Your mom."]
  }

  NAMES = {
    first_names: ["2Pac", "Alanis", "Ani", "Axl", "Balki", "Bart", "Beavis", "Beck", "Billy", "Bjork", "Blossom", "Bono", "Busta", "Butthead", "Calista", "Chandler", "Clarissa", "Coolio", "Courtney", "Dylan", "Eddie", "Frasier", "Gavin", "Geraldo", "Gwen", "Heather", "Hootie", "Ice", "Janet", "Jessica", "Kevin", "Krist", "Kurt", "Lars", "Lauryn", "Luke", "MacGyver", "Madonna", "Mariah", "Mark-Paul", "Melissa Joan", "Missy", "Neve", "Prince", "Regis", "River", "Roseanne", "Sarah Michelle", "Screech", "Scully", "Seal", "Sheryl", "Sinead", "Snoop", "The Notorious", "Thom", "Tiffani", "Tori", "Tre", "Trent", "Uma", "Vanilla", "Whitney", "Yakko", "Zack"],
    last_names: ["Amos", "Aniston", "Applegate", "B.I.G.", "Blige", "Boitano", "Bono", "Brandis", "Carey", "Carrey", "Clooney", "Cobain", "Cool J.", "Corgan", "Cosby", "Crow", "Cube", "DiFranco", "Dogg", "Doherty", "Dre", "Duchovny", "Elfman", "Flockhart", "Gellar", "Gosselaar", "Grohl", "Houston", "Ice", "Jackson", "Kiedis", "Kramer", "Latifah", "Lawless", "Lewinsky", "Locklear", "Loder", "Love", "Love Hewitt", "Manson", "Morissette", "Novaselic", "Perry", "Phair", "Phoenix", "Pickles", "Priestley", "Reznor", "Rhymes", "Rose", "Rossdale", "Rza", "Seinfeld", "Shakur", "Simpson", "Soprano", "Sorbo", "Stamos", "Stefani", "Taylor Thomas", "Ulrich", "Urkel", "Vedder", "Weiland"]
  }

  #### METHODS

  def self.name
    "#{NAMES[:first_names].sample} #{NAMES[:last_names].sample}"
  end

  def self.company
    "#{GENERAL[:adjectives].sample} #{COMPANIES[:products].sample}"
  end

  def self.city
    "#{ADDRESSES[:city_prefix].sample} #{GENERAL[:adjectives].sample}#{ADDRESSES[:city_suffix].sample}"
  end

  def self.email
    "#{NAMES[:first_names].sample.downcase.gsub(/[eio\s]/, {'e' => '3', 'i' => '1', 'o' => '0', ' ' => '_'})}#{GENERAL[:numbers].sample}@#{INTERNET[:domains].sample}#{INTERNET[:dot].sample}"
  end

  def self.url
    "http://www.#{INTERNET[:domains].sample}#{INTERNET[:dot].sample}/#{NAMES[:first_names].sample.downcase.strip}#{GENERAL[:numbers].sample}/#{INTERNET[:pages].sample}.html"
  end

  def self.date
    "#{rand(12)+1}/#{rand(29)+1}/#{GENERAL[:years].sample}"
  end

  def self.lingo
    "#{LINGO[:catchphrases].sample}"
  end
  
  # returns a paragraph of lorem ipsum
  # or multiple paragraphs if you pass in { paragraphs: 3 } to the options hash
  def self.lorem(opts = {})
    text_blob = ""
    paragraphs = opts[:paragraphs] || 1

    1.upto(paragraphs) do
      4.times do
        text_blob << lorem_sentence + " "
        text_blob << LINGO[:catchphrases].sample + ' '
      end
      text_blob << "\n\n"
    end

    text_blob.strip
  end

  # returns one lorem ipsum sentence
  def self.lorem_sentence
    sentence = ""
    sentence <<  ( GENERAL[:adjectives].sample + " " ).capitalize
    6.times { sentence << COMPANIES[:products].sample.downcase + " " }
    sentence << COMPANIES[:products].sample.downcase + "."
  end

  

end
