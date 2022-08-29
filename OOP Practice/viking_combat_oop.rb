class Person
  MAX_HEALTH = 120
  def heal
    self.health += 1 unless health >= 1 + MAX_HEALTH
  end
end

class Viking < Person #Inheritance, Viking extends Person
  #@@starting_health
  attr_accessor :name,:age,:health,:strength,:type
  def initialize(name,age=30,health=1,strength=1,type="Warrior",dead=false)
    @name = name
    @age = age
    #@health = @@starting_health you can use class variables to preset values
    @health = health
    @strength = strength
    @type = type
    @dead = dead
  end
  def self.create_warrior() #Factory Method: apply presets so that you don't need to pass all initialize args
    age = rand(0..35) + 15 
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    name = self.random_name
    type = self.random_type
    Viking.new(name, age, health, strength, type)
  end
  def self.random_name
    ["Ida","Freja","Ansel","Karl"].sample
  end
  def self.random_type
    ["Warrior","Shieldbearer","Spearman","Horseman"].sample
  end
  def take_damage(attacker)
    damage = rand(1..20) + attacker.strength
    self.health -= damage
    if self.health >= 1
      self.shout("#{self.name}: OUCH! #{attacker.name} hit me! I've got #{self.health}HP left.")
    elsif @dead == true
      puts "#{attacker.name} is dead and cannot attack!"
    else
      self.die
    end
  end
  def die
    puts "#{self.name} has been killed"
    @dead = true
    @health = 0
  end
  def shout(str)
      puts str
  end
  def sleep
    health += 10 unless health >= 99
  end
  def heal
    # 2.times { super } # alternative method using super to show Viking double healing!
    self.health += 2 unless health >= 1 + MAX_HEALTH #Example of inheritance override
    puts "Ready for battle! #{self.health}HP"
  end
  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10
  end
  class << self #This is an alternative to the self. method def
    def gold_to_silver(gold_pieces)
      gold_pieces * 10
    end
  end
end

munin = Viking.create_warrior()
warrior_1 = Viking.create_warrior()
munin.take_damage(warrior_1)
warrior_1.take_damage(munin)
munin.take_damage(warrior_1)
warrior_1.take_damage(munin)
munin.take_damage(warrior_1)
warrior_1.take_damage(munin)
munin.take_damage(warrior_1)
warrior_1.take_damage(munin)
munin.take_damage(warrior_1)
warrior_1.take_damage(munin)

#TODO create a :battle method to simulate combat between two warriors

p munin
p warrior_1