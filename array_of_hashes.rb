require 'csv'

class ArrayOfHashes
  def initialize(array)
    @array = array
  end

  def to_csv
    keys = @array.map(&:keys).flatten.uniq

    CSV.generate do |csv|
      csv << keys
      @array.each do |hash|
        csv << hash.values_at(*keys)
      end
    end
  end
end
