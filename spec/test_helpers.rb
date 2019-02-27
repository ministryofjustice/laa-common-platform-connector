def read_test_json(filename)
    @filename = filename
    @filepath = Rails.root.to_s + '/spec/support/fixtures/' + @filename
    @json = File.open(@filepath, 'rb').read
    JSON.parse(@json)
end
