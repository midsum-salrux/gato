/-  spider, *gato
/+  *strandio
::
::  this is common setup for all threads
::  https://developers.urbit.org/reference/arvo/threads/overview
::
=,  strand=strand:spider
=/  m  (strand ,vase)
^-  thread:spider
|=  arg=vase
^-  form:m
::
::  see sur/gato.hoon for type definitions
::
=/  =bird  !<(bird arg)
=/  greeting=tape  !<(tape vase.bird)
=/  =reply
  (crip "{greeting} {(scow %p author.memo.bird)}! You said {(trip text.bird)}")
%-  pure:m
!>  [reply vase.bird]
