class Calendar < ActiveRecord::Base
  
  validates_presence_of :service_id , :monday , :tuesday , :wednesday , :thursday , :friday , :saturday , :sunday , :start_date , :end_date
  
  
  rails_admin do 
    edit do
      field :service_id do
        label "Service ID"
        help  "The service_id contains an ID that uniquely identifies a set of dates when service is available for one or more routes. Each service_id value can appear at most once in a calendar.txt file. This value is dataset unique. It is referenced by the trips.txt file."
      end
      field :monday do
        label "Monday"
        help  "The monday field contains a binary value that indicates whether the service is valid for all Mondays. A value of 1 indicates that service is available for all Mondays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Mondays in the date range."
      end
      field :tuesday do
        label "Tuesday"
        help  "The tuesday field contains a binary value that indicates whether the service is valid for all Tuesdays. A value of 1 indicates that service is available for all Tuesdays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Tuesdays in the date range."
      end
      field :wednesday do
        label "Wednesday"
        help  "The wednesday field contains a binary value that indicates whether the service is valid for all Wednesdays. A value of 1 indicates that service is available for all Wednesdays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Wednesdays in the date range."
      end
      field :thursday do
        label "Thursday"
        help  "The thursday field contains a binary value that indicates whether the service is valid for all Thursdays. A value of 1 indicates that service is available for all Thursdays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Thursdays in the date range."
      end
      field :friday do
        label "Friday"
        help  "The friday field contains a binary value that indicates whether the service is valid for all Fridays. A value of 1 indicates that service is available for all Fridays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Fridays in the date range."
      end
      field :saturday do
        label "Saturday"
        help  "The saturday field contains a binary value that indicates whether the service is valid for all Saturdays. A value of 1 indicates that service is available for all Saturdays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Saturdays in the date range."
      end
      field :sunday do
        label "Sunday"
        help  "The sunday field contains a binary value that indicates whether the service is valid for all Sundays. A value of 1 indicates that service is available for all Sundays in the date range. (The date range is specified using the start_date and end_date fields.) A value of 0 indicates that service is not available on Sundays in the date range."
      end
      field :start_date do
        label "Start Date"
        help  "The start_date field contains the start date for the service. The start_date field's value should be in YYYYMMDD format."
      end
      field :end_date do
        label "End date"
        help  "The end_date field contains the end date for the service. This date is included in the service interval. The end_date field's value should be in YYYYMMDD format."
      end
    end
  end
end
