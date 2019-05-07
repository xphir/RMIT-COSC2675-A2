module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "RMIT Course App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def elapsed_time(time_input)
    time = Time.now - (time_input || Time.now)
    tokens = {
      31536000 => 'year',
      2592000 => 'month',
      604800 => 'week',
      86400 => 'day',
      3600 => 'hour',
      60 => 'minute',
      1 => 'second'
    }

    tokens.each do |unit, word|
      # Convert units
      num_units = (time / unit).floor

      # check plural
      plural = num_units > 1 ? 's' : nil
      return "#{num_units} #{word}#{plural}" if (unit < time)
    end

    # If time is 0
    return "0 seconds"
  end
end