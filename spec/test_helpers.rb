def read_test_json_and_return_openstruct
    @file_name = 'hearing.events.hearing-resulted-convictionAtTrial.json'
    @file_path = Rails.root.to_s + '/spec/support/fixtures/' + @file_name
    @json = File.open(@file_path, 'rb').read
    JSON.parse(@json, object_class: OpenStruct)
end
