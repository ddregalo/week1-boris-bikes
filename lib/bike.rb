class Bike

  def working
    @working = true
  end

  def is_broken
    @broken = true
  end

  def broken?
    @broken
    end

    def report_bike(bike)
      if bike.broken?
        is_broken
      end
    end

end
