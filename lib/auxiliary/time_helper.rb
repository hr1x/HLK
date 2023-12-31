# frozen_string_literal: true

# AutoHCK module
module AutoHCK
  # Helper module
  module Helper
    def time_to_seconds(time)
      time.split(':').reverse.map.with_index { |a, i| a.to_i * (60**i) }
          .reduce(:+)
    end

    def seconds_to_time(sec)
      format('%<h>.02d:%<m>.02d:%<s>.02d', h: sec / 60 / 60, m: sec / 60 % 60, s: sec % 60)
    end

    def time_diff(start, finish)
      ((finish - start) * 24 * 60 * 60).to_i
    end
  end
end
