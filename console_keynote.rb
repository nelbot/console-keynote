require 'terminfo'

class Keynote
  def initialize
    @all_slides = []
  end

  def add_slides(slides)
    @all_slides.push(slides)
  end

  def presentation
    puts @all_slides
  end
end

class Slide
    
    def initialize    
      f = IO.readlines("keynote.txt")
      puts f[0], f[1], f[2], f[3], f[4]
      slide_text = []
      slide_text.push(f[0])
      puts slide_text[0].to_s
    end

    def center
     
    end
end

















slide = Slide.new









# Console Keynote #

# text will be centered, horizontally and vertically
# next prompt will go to next slider
# previous prompt will go to previous slide

# take vertical line number, subtract 1 line, and divide by 2. floating point will round down. 
# take horizontal character numbers, subtract string.length, and divide by 2. float will round down. 