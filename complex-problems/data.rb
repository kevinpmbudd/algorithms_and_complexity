require './city'

@chicago = City.new('Chicago')
@chicago.neighbors = {
    'Los Angeles'     => 2015,
    'Seattle'         => 2063,
    'Fort Lauderdale' => 1357,
    'New York'        => 796,
  }
@seattle = City.new('Seattle')
@seattle.neighbors = {
    'Chicago'         => 2063,
    'Los Angeles'     => 1137,
    'Fort Lauderdale' => 3299,
    'New York'        => 2859,
  }
@los_angeles = City.new('Los Angeles')
@los_angeles.neighbors =
  { 'Chicago'         => 2015,
    'Seattle'         => 1137,
    'Fort Lauderdale' => 2712,
    'New York'        => 2797,
  }
@fort_lauderdale = City.new('Fort Lauderdale')
@fort_lauderdale.neighbors = {
    'Chicago'        => 1357,
    'Seattle'        => 3299,
    'Los Angeles'    => 2712,
    'New York'       => 1256,
  }
@new_york = City.new('New York')
@new_york.neighbors =
  { 'Chicago'         => 796,
    'Seattle'         => 2859,
    'Fort Lauderdale' => 1256,
    'Los Angeles'     => 2797,
  }

  CITIES = {
    'Chicago'         => @chicago,
    'Seattle'         => @seattle,
    'Los Angeles'     => @los_angeles,
    'Fort Lauderdale' => @fort_lauderdale,
    'New York'        => @new_york
  }
