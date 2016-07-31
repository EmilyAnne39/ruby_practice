class Hangman
    
    attr_accessor :available_parts, :hanged_parts #we want to show these attributes so we know ehich parts are picked/have been hanged
    
    def initialize(available_parts, hanged_parts)
      @available_parts, @hanged_parts = available_parts, hanged_parts
    end
    
    def add_body_part_until_hanged
     @hanged_parts << @available_parts.pop
    end
    
    def is_man_hanged?
      @available_parts == [] ? true : false #not sure what this indicates...
    end
    
    def show_hangman
      puts "You've hanged: "
      print @hanged_parts
      puts ""
    end
    
end