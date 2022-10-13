class Dinosaur

  DIGNITIES = ["I know 20 ways how to cook people!",
               "I know how to growl!",
               "I know how to jump!"]

  attr_accessor :name, :has_ecscalibur # getters and setters

  def initialize(name, has_ecscalibur = false)
    @name = name
    @has_ecscalibur = has_ecscalibur
    puts "Dinosaur #{name}: Yiiiii"
  end

  def tell_about_your_friend(other_dinosaur)
    puts "#{self.name}: His name is #{other_dinosaur.name} and some time ago he told me: '#{other_dinosaur.tell_your_dignities}'. What a great buddy!"
  end

  def check_if_ecscalibur_here
    puts has_ecscalibur? ? "#{self.name}: Yes! It's here!" : "#{self.name}: Hm.. looks like I havent such thing.."
  end

  protected

  def tell_your_dignities
    DIGNITIES.sample # return a random element from the array.
  end

  private

  def has_ecscalibur? # return true or false
    @has_ecscalibur
  end

end


class Wizard
  # a splat operator, which means that we can pass an undefined number of arguments
  def give_sword(*creatures)
    creatures.sample.has_ecscalibur = true
    puts "Wind: 'Wizard decided to give magick sword to one of the dinosaurs!!'\n\n"
  end
end

first_dinosaur = Dinosaur.new("Anthony")
second_dinosaur = Dinosaur.new("Rory")

Wizard.new.give_sword(first_dinosaur, second_dinosaur)

first_dinosaur.check_if_ecscalibur_here
second_dinosaur.check_if_ecscalibur_here

first_dinosaur.tell_about_your_friend(second_dinosaur)
second_dinosaur.tell_about_your_friend(first_dinosaur)
