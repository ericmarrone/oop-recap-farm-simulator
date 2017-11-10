require_relative  'fields'


class Farm

  def initialize(name)
    @name = name
    @total_food = 0

  end

  def name
    @name
  end

  def total_food
    @total_food
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "\#\#\#\# #{self.name} - DO \#\#\#\#"
    puts '[1] field: Adds a new field'
    puts '[2] harvest: harvests crops and adds to total harvested'
    puts '[3] status'
    puts '[4] relax'
    puts '[5] Exit'
    puts 'Please enter an option: Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_field
    when 2 then harvest
    when 3 then status
    when 4 then relax
    when 5 then exit
    end
  end

  def add_field
    puts "what kind of field is it?"
    puts '[1] corn '
    puts '[2] wheat '
    field_type = gets.to_i
    puts "Enter a name for this field:"
    field_name = gets.chomp
    puts "How large is the field in hectares?"
    field_size = gets.to_i
    case field_type
    when 1 then new_corn_field = Corn.create(field_name, field_size)
      puts "Added a corn field of #{field_size} hectares!"
    when 2 then new_wheat_field = Wheat.create(field_name, field_size)
      puts "Added a corn field of #{field_size} hectares!"
    end



  end

  def status
    all_fields = Field.all
    all_fields.each do |field|
      puts "#{field.name.capitalize} is a #{field.type.capitalize} field and is #{field.hectares} hectares."
    end
    puts "The farm has #{total_food} harvested food so far"
  end

  def harvest

  end

  def relax
    puts "50 hectares of tall green stalks rustling in the breeze fill your horizon.
    The sun hangs low, casting an orange glow on a sea of 100 hectares of wheat."
  end
end


  my_farm = Farm.new("My Farm")
  my_farm.main_menu
