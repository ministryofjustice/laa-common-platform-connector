require 'rails_helper'

RSpec.describe ConverterService do
  before :each do
    uri = URI('https://api.common-platform.gov/hearings/1')
    @openstruct =  JSON.parse(Net::HTTP.get(uri), object_class: OpenStruct)
  end

  describe 'conversions' do
    it 'can convert the common platform data to a hearing' do
      @hearing = ConverterService.hearing(@openstruct)
      expect(@hearing.court_name).to eq('Wood Green Crown Court')
      expect(@hearing.description).to eq('Trial')
    end

    it 'can convert the openstruct common platform data to a list of defendants' do
      unconverted_defendant = @openstruct.hearing.prosecutionCases[0].defendants[0]
      @defendant = ConverterService.defendant(unconverted_defendant)
      expect(@defendant.first_name).to eq('Edward')
      expect(@defendant.last_name).to eq('Harrison')
      expect(@defendant.date_of_birth).to eq('2002-01-10')
    end

    it 'can convert common platform data into an offence' do
      unconverted_offence = @openstruct.hearing.prosecutionCases[0].defendants[0].offences[0]
      @offence = ConverterService.offence(unconverted_offence)
      expect(@offence.title).to eq('Racially / religiously aggravated wounding / grievous bodily harm')
      expect(@offence.legislation).to eq('Contrary to section 29(1)(b) and (2) of the Crime and Disorder Act 1998')
      expect(@offence.wording).to include('On 21/10/2018 at Euston Train Station')
    end

    it 'can convert common platform data into an advocate' do
      unconverted_advocate = @openstruct.hearing.courtHearing.defenceCounsels[0]
      @advocate = ConverterService.advocate(unconverted_advocate)
      expect(@advocate.first_name).to eq('Jason')
      expect(@advocate.last_name).to eq('Doyle')
      expect(@advocate.status).to include('Leading QC')
    end
  end
end
