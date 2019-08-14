class ResistorColor
  COLORS = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
  }
  
  def self.value(colors)
    result = colors.map do |color|
      COLORS[color.to_sym]
    end.join().to_i
    
    return result
  end
end