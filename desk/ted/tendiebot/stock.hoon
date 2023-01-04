/-  spider, *gato
/+  tendiebot-quote, *strandio
=,  strand=strand:spider
=,  dejs:format
=/  m  (strand ,vase)
|^  ted
++  mine-json
  |=  symbol=tape
  %-  ot
  :~  name+sa
      close+sa
      [%'percent_change' sa]
  ==
++  url
  |=  [symbol=tape api-key=tape]
  ^-  tape
  "https://api.twelvedata.com/quote?symbol={symbol}&apikey={api-key}"
++  numberize
  |=  [name=tape price=tape change=tape]
  ^-  quote:tendiebot-quote
  :+  name
    (ne (need (de-json:html (crip price))))
  `(ne (need (de-json:html (crip change))))
++  ted
  ^-  thread:spider
  |=  arg=vase
  ^-  form:m
  =/  m  (strand ,vase)
  =/  =bird  !<(bird arg)
  =/  api-key  !<(tape vase.bird)
  =/  symbol  (cuss (scan (trip text.bird) ticker-rule:tendiebot-quote))
  ;<  =json  bind:m  (fetch-json (url symbol api-key))
  =/  result  (numberize ((mine-json symbol) json))
  =/  =reply  (crip (format:tendiebot-quote result))
  %-  pure:m
  !>  [reply vase.bird]
--
