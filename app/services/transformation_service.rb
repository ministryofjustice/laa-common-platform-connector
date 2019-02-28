class TransformationService

  def self.transform(common_platform_json)
     hearing = {}
     hearing['hearing_id'] = common_platform_json.dig('hearing', 'id')
     hearing['court_name'] = common_platform_json.dig('hearing', 'courtCentre', 'name')
     hearing['description'] = common_platform_json.dig('hearing', 'courtHearing', 'type', 'description')
     hearing['hearing_dates'] = common_platform_json.dig('hearing', 'courtHearing', 'hearingDays').map do |v|
       v.select{ |k,_| k.eql?('sittingDay') }
     end
     hearing['defendants'] = {}
     common_platform_json.dig('hearing','prosecutionCases').each do |kase|
       kase.dig('defendants').each_with_index do |defendant, i|
         hold = hearing['defendants']["#{i.to_s}"] = {}
         hold['first_name'] = defendant.dig('personDefendant', 'personDetails', 'firstName')
         hold['last_name'] = defendant.dig('personDefendant', 'personDetails', 'lastName')
         hold['date_of_birth'] = defendant.dig('personDefendant', 'personDetails', 'dateOfBirth')
         hold['date_of_birth'] = defendant.dig('defenceOrganisation', 'name')
         hold['offences'] = {}
         defendant.dig('offences').each_with_index do |offence, x|
           offence_hold = hold['offences']["#{x.to_s}"] = {}
           offence_hold['title'] = offence.dig('offenceTitle')
           offence_hold['legislation'] = offence.dig('offenceLegislation')
           offence_hold['wording'] = offence.dig('wording')
         end
       end
     end

     hearing['advocates'] = {}
     common_platform_json.dig('hearing','courtHearing', 'defenceCounsels').each_with_index do |advocate, i|
       hold = hearing['advocates']["#{i.to_s}"] = {}
       hold['first_name'] = advocate.dig('firstName')
       hold['last_name'] = advocate.dig('lastName')
       hold['attendance_days'] = advocate.dig('attendanceDays')
       hold['status'] = advocate.dig('status')
       hold['defendants'] = advocate.dig('defendants')
     end
     hearing.to_json
  end
end
