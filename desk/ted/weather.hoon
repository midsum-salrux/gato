/-  spider, *gato
/+  *strandio
=,  strand=strand:spider
=,  dejs:format
=/  m  (strand ,vase)
|^  ted
+$  geolocation  [lat=tape lon=tape name=tape]
++  ud-to-cord
  |=  [n=@ud]
  ^-  cord
  (crip ((d-co:co 0) n))
++  mine-geocoder-json
  |=  =json
  ^-  geolocation
  %+  snag  0
  %.  json
    %-  ar
    %-  ot
    :~  lat+sa
        lon+sa
        [%'display_name' sa]
    ==
++  geocoder-url
  |=  [location=tape api-key=tape]
  ^-  tape
  "https://us1.locationiq.com/v1/search?key={api-key}&q={location}&format=json"
++  weather-decoder
  %-  ot
  :~  :-  %'current_weather'
      %-  ot
      :~  temperature+ne
          weathercode+ne
      ==
  ==
++  mine-weather-json
  |=  [=json temperature-unit=tape name=tape]
  ^-  tape
  =/  [temperature=@rd code=@rd]  (weather-decoder json)
  =/  [temperature-sign=? temperature-value=@ud]
    (old:si (need (toi:rd temperature)))
  ;:  weld
      (describe-weather code)  ", "
      ?:  temperature-sign  ""  "-"
      (trip (ud-to-cord temperature-value))
      ?:  =(temperature-unit "fahrenheit")  "F"  "C"
      " in "  name
  ==
++  weather-url
  |=  [=geolocation temperature-unit=tape]
  ^-  tape
  "https://api.open-meteo.com/v1/forecast?latitude={lat.geolocation}&longitude={lon.geolocation}&current_weather=true&temperature_unit={temperature-unit}"
++  describe-weather
  |=  code=@rd
  ^-  tape
  ::  https://open-meteo.com/en/docs
  =/  description-list
    :~  [.~0 "Clear sky"]
        [.~1 "Mainly clear"]
        [.~2 "Partly cloudy"]
        [.~3 "Overcast"]
        [.~45 "Fog"]
        [.~48 "Depositing rime fog"]
        [.~51 "Light drizzle"]
        [.~53 "Moderate drizzle"]
        [.~55 "Heavy drizzle"]
        [.~56 "Light freezing drizzle"]
        [.~57 "Heavy freezing drizzle"]
        [.~61 "Slight rain"]
        [.~63 "Moderate rain"]
        [.~65 "Heavy rain"]
        [.~66 "Light freezing rain"]
        [.~67 "Heavy freezing rain"]
        [.~71 "Slight snow fall"]
        [.~73 "Moderate snow fall"]
        [.~75 "Heavy snow fall"]
        [.~77 "Snow grains"]
        [.~80 "Slight rain showers"]
        [.~81 "Moderate rain showers"]
        [.~82 "Violent rain showers"]
        [.~85 "Slight snow showers"]
        [.~86 "Heavy snow showers"]
        [.~95 "Thunderstorm"]
        [.~96 "Thunderstorm"]
        [.~99 "Thunderstorm"]
    ==
  =/  descriptions
    (~(gas by *(map @rd tape)) description-list)
  (fall (~(get by descriptions) code) "Unknown conditions")
++  ted
  ^-  thread:spider
  |=  arg=vase
  ^-  form:m
  ::  TODO url encode the geocoding query
  =/  m  (strand ,vase)
  =/  =bird  !<(bird arg)
  =/  [api-key=tape temperature-unit=tape]  !<([tape tape] vase.bird)
  ;<  geocode=json  bind:m  (fetch-json (geocoder-url (trip text.bird) api-key))
  =/  =geolocation  (mine-geocoder-json geocode)
  ;<  weather=json  bind:m  (fetch-json (weather-url geolocation temperature-unit))
  =/  =reply  (crip (mine-weather-json weather temperature-unit name.geolocation))
  %-  pure:m
  !>  [reply vase.bird]
--
