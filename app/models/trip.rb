class Trip < ActiveRecord::Base
  
  validates_presence_of :route_id , :service_id , :trip_id
  
  rails_admin do 

    edit do
      field :route_id  do
        label "Route ID"
        help  "Required - The route_id field contains an ID that uniquely identifies a route. This value is referenced from the routes.txt file."
      end
      field :service_id  do
        label "Service ID"
        help  "Required - The service_id contains an ID that uniquely identifies a set of dates when service is available for one or more routes. This value is referenced from the calendar.txt or calendar_dates.txt file."
      end
      field :trip_id  do
        label "Trip ID"
        help  "Required - The trip_id field contains an ID that identifies a trip. The trip_id is dataset unique."
      end
      field :trip_headsign  do
        label "Trip Headsign"
        help  "The trip_headsign field contains the text that appears on a sign that identifies the trip's destination to passengers. Use this field to distinguish between different patterns of service in the same route. If the headsign changes during a trip, you can override the trip_headsign by specifying values for the the stop_headsign field in stop_times.txt. See a Google Maps screenshot highlighting the headsign."
      end
      field :trip_short_name  do
        label "Trip Short Name"
        help  "The trip_short_name field contains the text that appears in schedules and sign boards to identify the trip to passengers, for example, to identify train numbers for commuter rail trips. If riders do not commonly rely on trip names, please leave this field blank. A trip_short_name value, if provided, should uniquely identify a trip within a service day; it should not be used for destination names or limited/express designations."
      end
      field :direction_id  do
        label "Direction ID"
        help  "The direction_id field contains a binary value that indicates the direction of travel for a trip. Use this field to distinguish between bi-directional trips with the same route_id. This field is not used in routing; it provides a way to separate trips by direction when publishing time tables. You can specify names for each direction with the trip_headsign field.

    0 - travel in one direction (e.g. outbound travel)
    1 - travel in the opposite direction (e.g. inbound travel)

For example, you could use the trip_headsign and direction_id fields together to assign a name to travel in each direction for a set of trips. A trips.txt file could contain these rows for use in time tables:

trip_id,...,trip_headsign,direction_id
1234,...,to Airport,0
1505,...,to Downtown,1 "
      end
      field :block_id  do
        label "Block ID"
        help  "The block_id field identifies the block to which the trip belongs. A block consists of two or more sequential trips made using the same vehicle, where a passenger can transfer from one trip to the next just by staying in the vehicle. The block_id must be referenced by two or more trips in trips.txt."
      end
      field :shape_id  do
        label "Shape ID"
        help  "The shape_id field contains an ID that defines a shape for the trip. This value is referenced from the shapes.txt file. The shapes.txt file allows you to define how a line should be drawn on the map to represent a trip."
      end
      field :wheelchair_accessible  do
        label "Wheelchair accessible"
        help  "0 (or empty) - indicates that there is no accessibility information for the trip
    1 - indicates that the vehicle being used on this particular trip can accommodate at least one rider in a wheelchair
    2 - indicates that no riders in wheelchairs can be accommodated on this trip"
      end
    end
  end
  
end
