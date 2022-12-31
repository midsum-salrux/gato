/-  spider, *gato
/+  tendiebot-quote, *strandio
=,  strand=strand:spider
=,  dejs:format
=/  m  (strand ,vase)
|^  ted
++  mine-json
  |=  symbol=tape
  %-  ot
  :~  :-  %data
      %-  ot
      :~  :-  `@tas`(crip symbol)
          %-  ar
          %-  ot
          :~  name+sa
            :-  %quote
            %-  ot
            :~  :-  %'USD'
                %-  ot
                :~  [%price ne]
                    [%'percent_change_24h' (mu ne)]
                ==
            ==
          ==
      ==
  ==
++  url
  |=  [symbol=tape api-key=tape]
  ^-  tape
  "https://pro-api.coinmarketcap.com/v2/cryptocurrency/quotes/latest?symbol={symbol}&CMC_PRO_API_KEY={api-key}"
++  ted
  ^-  thread:spider
  |=  arg=vase
  ^-  form:m
  =/  m  (strand ,vase)
  =/  =bird  !<(bird arg)
  =/  api-key  !<(tape vase.bird)
  =/  symbol  (scan (trip text.bird) ticker-rule:tendiebot-quote)
  ;<  =json  bind:m  (fetch-json (url symbol api-key))
  =/  result  `quote:tendiebot-quote`(snag 0 ((mine-json symbol) json))
  =/  =reply  (crip (format:tendiebot-quote result))
  %-  pure:m
  !>  [reply vase.bird]
--
