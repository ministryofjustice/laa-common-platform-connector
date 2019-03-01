def read_test_json(filename)
    @filename = filename
    @filepath = Rails.root.to_s + '/spec/support/fixtures/' + @filename
    @json = File.open(@filepath, 'rb').read
    JSON.parse(@json)
end

def setup_test_json
  raw_data_path = 'hearing.events.hearing-resulted-convictionAtTrial.json'
  test_data_path = 'hearing.events.hearing-resulted-convictionAtTrial-transformed.json'
  @data = read_test_json(raw_data_path)
  @test_transformed_data = read_test_json(test_data_path)
end
