|%
+$  quote  [name=tape price=@rd day-change-percent=(unit @rd)]
++  rd-to-tape
  |=  [n=@rd]
  ^-  tape
  (r-co:co (rlyd n))
++  ud-to-tape
  |=  [n=@ud]
  ^-  tape
  ((d-co:co 0) n)
++  format
  |=  [name=tape price=@rd day-change-percent=(unit @rd)]
  ^-  tape
  =/  change  (fall day-change-percent .~0)
  ;:  weld
    name
    " $"
    (rd-to-tape price)
    ?:  (sig:rd change)  " +"  " "
    (rd-to-tape change)
    "%"
  ==
++  ticker-rule  ;~(pfix (star buc) (plus next))
--
