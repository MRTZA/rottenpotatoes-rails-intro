module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  # Turns on highlighting if valid field:
  def hilite(field)
    if(params[:sort].to_s == field)
      return 'hilite'
    else
      return nil
    end
  end

  # Remembers checked boxes after search
  def checked(rating)
    return @checked.include? rating
  end
end
