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
end
