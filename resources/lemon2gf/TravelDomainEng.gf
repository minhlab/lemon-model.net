--# -path=.:prelude:present:../../Core:../../Core/Libraries

concrete TravelDomainEng of TravelDomain = OWLEng ** open  BasicEng, Prelude, SyntaxEng, ParadigmsEng, ConstructorsEng in {



 lin

  Meal  = variants { mkClass (mkCN meal_N);  };
  flightArrival_airport arg_flight arg_airport  = variants { mkStatement arg_flight (mkVP  (mkVP arrive_V) (ConstructorsEng.mkAdv (mkPrep "at") arg_airport.np));  };
  flight_flightArrival_city_flight_flightdeparture_city arg_trip arg_destination arg_source  = variants { mkStatement arg_trip (mkVP (mkVP  (mkVP travel_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np))(ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_trip (mkVP  (mkVP travel_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_trip (mkVP  (mkVP travel_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np)); mkStatement arg_trip (mkVP  (mkVP travel_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np));  };
  airline_1_arrival_city arg_servingairline arg_served  = variants { mkStatement arg_servingairline (mkVP (mkV2 serve_V) arg_served.np);  };
  airline_1_arrival_airport arg_servingairline arg_served  = variants { mkStatement arg_servingairline (mkVP (mkV2 serve_V) arg_served.np);  };
  Rental  = variants { mkClass (mkCN rental_N);  };
  flightdeparture_airport arg_flight arg_source  = variants { mkStatement arg_flight (mkVP  (mkVP depart_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP depart_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np));  };
  flightdeparture_city arg_flight arg_source  = variants { mkStatement arg_flight (mkVP  (mkVP depart_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP depart_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP (mkV2 leave_V) arg_source.np);  };
  Hotel  = variants { mkClass (mkCN hotel_N);  };
  AirportService  = variants { mkClass (mkCN airportservice_N); mkClass (mkCN groundtransportation_N);  };
  Arrival  = variants { mkClass (mkCN arrival_N); mkClass (mkCN arrival_N);  };
  flightArrival_city arg_flight arg_city  = variants { mkStatement arg_flight (mkVP  (mkVP arrive_V) (ConstructorsEng.mkAdv (mkPrep "in") arg_city.np));  };
  flightdeparture_city_flightArrival_city arg_flight arg_source arg_destination  = variants { mkStatement arg_flight (mkVP (mkVP  (mkVP go_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np))(ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP go_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP go_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np)); mkStatement arg_flight (mkVP  (mkVP go_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np));  };
  Car  = variants { mkClass (mkCN car_N);  };
  Leg  = variants { mkClass (mkCN leg_N);  };
  AirLine  = variants { mkClass (mkCN airline_N);  };
  CarType  = variants { mkClass (mkCN kindofcar_N); mkClass (mkCN typeofcar_N); mkClass (mkCN cartype_N);  };
  Trip  = variants { mkClass (mkCN trip_N);  };
  flightArrival_city_flightdeparture_city arg_flight arg_destination arg_source  = variants { mkStatement arg_flight (mkVP (mkVP  (mkVP fly_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np))(ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP fly_V) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkVP  (mkVP fly_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np)); mkStatement arg_flight (mkVP  (mkVP fly_V) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np));  };
  Country  = variants { mkClass (mkCN country_N);  };
  Flight  = variants { mkClass (mkCN flight_N);  };
  Plane  = variants { mkClass (mkCN aircraft_N); mkClass (mkCN airplane_N); mkClass (mkCN plane_N);  };
  Departure  = variants { mkClass (mkCN departure_N);  };
  Stay  = variants { mkClass (mkCN stay_N);  };
  City  = variants { mkClass (mkCN city_N);  };
  airline arg_operated arg_operator  = variants { mkStatement arg_operator (mkVP (mkV2 operate_V) arg_operated.np);  };
  State  = variants { mkClass (mkCN state_N);  };
  flightArrival_city_flightdeparture_city_Flight arg_flight arg_destination arg_source  = variants { mkStatement arg_flight (mkCN (mkCN  (mkCN flight_N) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np))(ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkCN  (mkCN flight_N) (ConstructorsEng.mkAdv (mkPrep "from") arg_source.np)); mkStatement arg_flight (mkCN  (mkCN flight_N) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np)); mkStatement arg_flight (mkCN  (mkCN flight_N) (ConstructorsEng.mkAdv (mkPrep "to") arg_destination.np));  };
  leg_stopover_city arg_flight arg_city  = variants { mkStatement arg_flight (mkVP  (mkVP stop_V) (ConstructorsEng.mkAdv (mkPrep "in") arg_city.np));  };
  StopOver  = variants { mkClass (mkCN stopover_N);  };
  leg arg_legflight arg_legof  = variants { mkStatement arg_legof (mkCN  (mkCN leg_N) (ConstructorsEng.mkAdv (mkPrep "of") arg_legflight.np));  };
  Airport  = variants { mkClass (mkCN airport_N);  };
  New_Jersey  = variants { mkIndividual (mkNP newjersey_PN);  };
  Cleveland  = variants { mkIndividual (mkNP cleveland_PN);  };
  Long_Beach  = variants { mkIndividual (mkNP longbeach_PN);  };
  Boston  = variants { mkIndividual (mkNP boston_PN);  };
  LoveField  = variants { mkIndividual (mkNP lovefield_PN);  };
  Minneapolis  = variants { mkIndividual (mkNP minneapolis_PN);  };
  Houston  = variants { mkIndividual (mkNP houston_PN);  };
  Phoenix  = variants { mkIndividual (mkNP phoenix_PN);  };
  Saint_Louis  = variants { mkIndividual (mkNP saintlouis_PN);  };
  Denver  = variants { mkIndividual (mkNP denver_PN);  };
  Orlando_Airport  = variants { mkIndividual (mkNP orlandoairport_PN);  };
  Canadian_Airlines_International  = variants { mkIndividual (mkNP canadianairlinesinternational_PN);  };
  Burbank  = variants { mkIndividual (mkNP burbank_PN);  };
  Columbus  = variants { mkIndividual (mkNP columbus_PN);  };
  Charlotte  = variants { mkIndividual (mkNP charlotte_PN);  };
  Toronto  = variants { mkIndividual (mkNP toronto_PN);  };
  Delta_Airlines  = variants { mkIndividual (mkNP deltaairlines_PN);  };
  Apeldoorn  = variants { mkIndividual (mkNP apeldoorn_PN);  };
  Washington_D_C  = variants { mkIndividual (mkNP washingtondc_PN);  };
  San_Francisco  = variants { mkIndividual (mkNP sanfrancisco_PN);  };
  Newark  = variants { mkIndividual (mkNP newark_PN);  };
  Salt_Lake_City  = variants { mkIndividual (mkNP saltlakecity_PN);  };
  Saint_Petersburg  = variants { mkIndividual (mkNP saintpetersburg_PN);  };
  Philadelphia  = variants { mkIndividual (mkNP philadelphia_PN);  };
  Kansas_City  = variants { mkIndividual (mkNP kansascity_PN);  };
  Continental_Airlines  = variants { mkIndividual (mkNP continentalairlines_PN);  };
  Atlanta  = variants { mkIndividual (mkNP atlanta_PN);  };
  Galway  = variants { mkIndividual (mkNP galway_PN);  };
  General_Mitchell_International  = variants { mkIndividual (mkNP generalmitchellairport_PN);  };
  Montreal  = variants { mkIndividual (mkNP montreal_PN);  };
  New_York  = variants { mkIndividual (mkNP newyork_PN);  };
  J_F_K  = variants { mkIndividual (mkNP jfk_PN);  };
  Northwest_Airlines  = variants { mkIndividual (mkNP northwestairlines_PN);  };
  United_Airlines  = variants { mkIndividual (mkNP unitedairlines_PN);  };
  Detroit  = variants { mkIndividual (mkNP detroit_PN);  };
  Oakland  = variants { mkIndividual (mkNP oakland_PN);  };
  Chicago  = variants { mkIndividual (mkNP chicago_PN);  };
  Nation_Air  = variants { mkIndividual (mkNP nationair_PN);  };
  Milwaukee  = variants { mkIndividual (mkNP milwaukee_PN);  };
  Las_Vegas  = variants { mkIndividual (mkNP lasvegas_PN);  };
  American_Airlines  = variants { mkIndividual (mkNP americanairlines_PN);  };
  Memphis  = variants { mkIndividual (mkNP memphis_PN);  };
  Bielefeld  = variants { mkIndividual (mkNP bielefeld_PN);  };
  Midwest_Express  = variants { mkIndividual (mkNP midwestexpress_PN);  };
  Takoma  = variants { mkIndividual (mkNP takoma_PN);  };
  La_Guardia  = variants { mkIndividual (mkNP laguardia_PN);  };
  Baltimore  = variants { mkIndividual (mkNP baltimore_PN);  };
  Tampa  = variants { mkIndividual (mkNP tampa_PN);  };
  Nashville  = variants { mkIndividual (mkNP nashville_PN);  };
  Toronto_International_Airport  = variants { mkIndividual (mkNP torontointernationalairport_PN);  };
  Los_Angeles  = variants { mkIndividual (mkNP losangeles_PN);  };
  Pittsburgh  = variants { mkIndividual (mkNP pittsburgh_PN);  };
  Cincinnati  = variants { mkIndividual (mkNP cincinnati_PN);  };
  Indianapolis  = variants { mkIndividual (mkNP indianapolis_PN);  };
  San_Diego  = variants { mkIndividual (mkNP sandiego_PN);  };
  Miami  = variants { mkIndividual (mkNP miami_PN);  };
  Boston_Airport  = variants { mkIndividual (mkNP bostonairport_PN);  };
  Seattle  = variants { mkIndividual (mkNP seattle_PN);  };
  Orlando  = variants { mkIndividual (mkNP orlando_PN);  };
  Saint_Paul  = variants { mkIndividual (mkNP saintpaul_PN);  };
  San_Jose  = variants { mkIndividual (mkNP sanjose_PN);  };
  Dallas  = variants { mkIndividual (mkNP dallas_PN);  };


 oper
  
  meal_N = mkN  "meal" ;
  arrive_V = mkV  "arrive" ;
  travel_V = mkV  "travel" ;
  serve_V = mkV  "serve" ;
  rental_N = mkN  "rental" ;
  depart_V = mkV  "depart" ;
  leave_V = mkV  "leave" ;
  hotel_N = mkN  "hotel" ;
  airportservice_N = mkN  "airport service" ;
  groundtransportation_N = mkN  "ground transportation" ;
  arrival_N = mkN  "arrival" ;
  go_V = mkV  "go" ;
  car_N = mkN  "car" ;
  leg_N = mkN  "leg" ;
  airline_N = mkN  "airline" ;
  kindofcar_N = mkN  "kind of car" ;
  typeofcar_N = mkN  "type of car" ;
  cartype_N = mkN  "car type" ;
  trip_N = mkN  "trip" ;
  fly_V = mkV  "fly" ;
  country_N = mkN  "country" ;
  flight_N = mkN  "flight" ;
  aircraft_N = mkN  "aircraft" ;
  airplane_N = mkN  "airplane" ;
  plane_N = mkN  "plane" ;
  departure_N = mkN  "departure" ;
  stay_N = mkN  "stay" ;
  city_N = mkN  "city" ;
  operate_V = mkV  "operate" ;
  state_N = mkN  "state" ;
  stop_V = mkV  "stop" ;
  stopover_N = mkN  "stopover" ;
  airport_N = mkN  "airport" ;
  newjersey_PN = mkPN "new jersey";
  cleveland_PN = mkPN "cleveland";
  longbeach_PN = mkPN "long beach";
  boston_PN = mkPN "boston";
  lovefield_PN = mkPN "love field";
  minneapolis_PN = mkPN "minneapolis";
  houston_PN = mkPN "houston";
  phoenix_PN = mkPN "phoenix";
  saintlouis_PN = mkPN "saint louis";
  denver_PN = mkPN "denver";
  orlandoairport_PN = mkPN "orlando airport";
  canadianairlinesinternational_PN = mkPN "canadian airlines international";
  burbank_PN = mkPN "burbank";
  columbus_PN = mkPN "columbus";
  charlotte_PN = mkPN "charlotte";
  toronto_PN = mkPN "toronto";
  deltaairlines_PN = mkPN "delta airlines";
  apeldoorn_PN = mkPN "apeldoorn";
  washingtondc_PN = mkPN "washington d c";
  sanfrancisco_PN = mkPN "san francisco";
  newark_PN = mkPN "newark";
  saltlakecity_PN = mkPN "salt lake city";
  saintpetersburg_PN = mkPN "saint petersburg";
  philadelphia_PN = mkPN "philadelphia";
  kansascity_PN = mkPN "kansas city";
  continentalairlines_PN = mkPN "continental airlines";
  atlanta_PN = mkPN "atlanta";
  galway_PN = mkPN "galway";
  generalmitchellairport_PN = mkPN "general mitchell airport";
  montreal_PN = mkPN "montreal";
  newyork_PN = mkPN "new york";
  jfk_PN = mkPN "j f k";
  northwestairlines_PN = mkPN "northwest airlines";
  unitedairlines_PN = mkPN "united airlines";
  detroit_PN = mkPN "detroit";
  oakland_PN = mkPN "oakland";
  chicago_PN = mkPN "chicago";
  nationair_PN = mkPN "nation air";
  milwaukee_PN = mkPN "milwaukee";
  lasvegas_PN = mkPN "las vegas";
  americanairlines_PN = mkPN "american airlines";
  memphis_PN = mkPN "memphis";
  bielefeld_PN = mkPN "bielefeld";
  midwestexpress_PN = mkPN "midwest express";
  takoma_PN = mkPN "takoma";
  laguardia_PN = mkPN "la guardia";
  baltimore_PN = mkPN "baltimore";
  tampa_PN = mkPN "tampa";
  nashville_PN = mkPN "nashville";
  torontointernationalairport_PN = mkPN "toronto international airport";
  losangeles_PN = mkPN "los angeles";
  pittsburgh_PN = mkPN "pittsburgh";
  cincinnati_PN = mkPN "cincinnati";
  indianapolis_PN = mkPN "indianapolis";
  sandiego_PN = mkPN "san diego";
  miami_PN = mkPN "miami";
  bostonairport_PN = mkPN "boston airport";
  seattle_PN = mkPN "seattle";
  orlando_PN = mkPN "orlando";
  saintpaul_PN = mkPN "saint paul";
  sanjose_PN = mkPN "san jose";
  dallas_PN = mkPN "dallas";

}