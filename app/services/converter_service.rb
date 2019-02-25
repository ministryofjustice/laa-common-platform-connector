class ConverterService

  def self.hearing(openstruct)
    court_name = openstruct.hearing.courtCentre.name
    description = openstruct.hearing.courtHearing.type.description

    Hearing.new(court_name: court_name,
                description: description)
  end

  def self.defendant(openstruct)
    details = openstruct.personDefendant.personDetails
    Defendant.new(first_name: details.firstName,
                  last_name: details.lastName,
                  date_of_birth: details.dateOfBirth)
  end

  def self.offence(openstruct)
    Offence.new(title: openstruct.offenceTitle,
                  legislation: openstruct.offenceLegislation,
                  wording: openstruct.wording)
  end

  def self.advocate(openstruct)
    Advocate.new(first_name: openstruct.firstName,
                  last_name: openstruct.lastName,
                  status: openstruct.status)
  end

  def self.map(openstruct)
    hearing = hearing(openstruct)
    converted_defendants = []
    openstruct.hearing.prosecutionCases.each do |pcase|
      pcase.defendants.each do |defendant|
         converted_defendants << defendant(defendant)
      end
    end
    hearing.defendants = converted_defendants
    hearing
  end
end
