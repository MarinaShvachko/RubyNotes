
def plainify(data)
  result = []
  data.each_pair do |band_name, songs|
    songs.each do |song_name|
      result << { band: band_name, song: song_name }
    end
  end
  result
  # The Ruby Way
  # data.keys.flat_map do |band_name|
  #   data[band_name].map { |song_name| { band: band_name, song: song_name } }
  # end
end


data = {
  'Queen' => [
    'Bohemian Rhapsody',
    "Don't Stop Me Now"
  ],
  'Metallica' => [
    'Nothing Else Matters'
  ],
  "Guns N' Roses" => [
    'Paradise City',
    'November Rain'
  ],
  'AC/DC' => [
    'Thunderstruck',
    'Back In Black',
    'Shoot to Thrill'
  ]
}

puts plainify(data)