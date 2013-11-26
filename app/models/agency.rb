class Agency < ActiveRecord::Base
  
  validates_presence_of :agency_name , :agency_url , :agency_timezone
    
  rails_admin do 
    edit do
      
       field :agency_id do
         label "Agency ID"
         help  "The agency_id field is an ID that uniquely identifies a transit agency. A transit feed may represent data from more than one agency. The agency_id is dataset unique. This field is optional for transit feeds that only contain data for a single agency."
       end
       field :agency_name do
         label "Agency Name"
         help  "Required - The agency_name field contains the full name of the transit agency. Google Maps will display this name. "
       end
       field :agency_url do
         label "Agency URL"
         help  "Required - The agency_url field contains the URL of the transit agency. The value must be a fully qualified URL that includes http:// or https://, and any special characters in the URL must be correctly escaped. See http://www.w3.org/Addressing/URL/4_URI_Recommentations.html for a description of how to create fully qualified URL values."
       end
       field :agency_timezone do
         label "Agency Timezone"
         help  "Required - The agency_timezone field contains the timezone where the transit agency is located. Timezone names never contain the space character but may contain an underscore. Please refer to http://en.wikipedia.org/wiki/List_of_tz_zones for a list of valid values. If multiple agencies are specified in the feed, each must have the same agency_timezone."
       end
       field :agency_lang do
         label "Agency Language"
         help  "The agency_lang field contains a two-letter ISO 639-1 code for the primary language used by this transit agency. The language code is case-insensitive (both en and EN are accepted). This setting defines capitalization rules and other language-specific settings for all text contained in this transit agency's feed. Please refer to http://www.loc.gov/standards/iso639-2/php/code_list.php for a list of valid values."
       end
       field :agency_phone do
         label "Agency Phone"
         help  "The agency_phone field contains a single voice telephone number for the specified agency. This field is a string value that presents the telephone number as typical for the agency's service area. It can and should contain punctuation marks to group the digits of the number. Dialable text (for example, TriMet's \"503-238-RIDE\") is permitted, but the field must not contain any other descriptive text. "
       end
       field :agency_fare_url do
         label "Agency Fare URL"
         help  "The agency_fare_url specifies the URL of a web page that allows a rider to purchase tickets or other fare instruments for that agency online. The value must be a fully qualified URL that includes http:// or https://, and any special characters in the URL must be correctly escaped. See http://www.w3.org/Addressing/URL/4_URI_Recommentations.html for a description of how to create fully qualified URL values."
       end
       
     end
  end
  
end
