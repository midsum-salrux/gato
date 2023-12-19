/-  channels, chat, *gato
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =quilt]
+$  card  card:agent:gall
::
++  chat-subscribe-card
  |=  =ship
  [%pass /chat/updates %agent [ship %channels] %watch /]
::
++  run-thread-card
  |=  [call=cord =command =nest:channels text=cord =memo:channels]
  ^-  card
  =/  =bird  [text memo nest vase.command]
  :*  %pass  /result/[call]/(scot %p +<.nest)/[+>.nest]  %arvo  %k  %fard
      desk.ted.command  name.ted.command  %noun
      !>(bird)
  ==
::
++  message-card
  |=  [our=ship action=c-channels:channels]
  ^-  card
  [%pass /channel/poke %agent [our %channels] %poke %channel-action !>(action)]
::
++  find-slash
  |=  =memo:channels
  ^-  [cord cord]
  ::  find the *first* raw text segment
  =/  =verse:channels  (snag 0 content.memo)
  =/  first=cord
    ?-  verse
        [%block *]  !!
        [%inline *]
      =/  inlines  p.verse
      |-
      ?~  inlines  !!
      ?@  i.inlines  i.inlines
      $(inlines t.inlines)
    ==
  ?:  =((scag 1 (trip first)) "/")
    =/  [call=tape text=tape]  (scan (trip first) slash-command-rule)
    [(crip call) (crip text)]
  ['' '']  :: ensure we don't generate a dojo printable error every time some non-gato text gets written to the chat  
::  "/mycommand lorem ipsum" to ["mycommand" "lorem ipsum"]
++  slash-command-rule
  ;~  (glue (star ace))
    ;~  pfix
      fas
      (plus alp)
    ==
    (star next)
  ==
::
++  message
  |=  [=id-post:channels =nest:channels =story:channels]
  ^-  c-channels:channels
  =/  memo  :*
    content=story
    author=+<.nest
    sent=id-post
  ==
  =/  kind-data  [%chat ~]
  =/  essay  [memo kind-data]
  =/  post-action  [%add essay]
  =/  action  [%post post-action]
  `c-channels:channels`[%channel nest action]
::
++  reply-to-content
  |=  =reply
  ^-  story:channels
  ?^  reply  reply
    `(list verse:channels)`[[%inline `(list inline:channels)`[`@t`reply ~]] ~]
::
++  replace-vase
  |=  [q=quilt call=cord =vase]
  ^-  quilt
  =/  =command  (~(got by q) call)
  (~(put by q) call [ted.command vase])
--
::
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
++  on-init
  ^-  (quip card _this)
  :_  this
  ~[(chat-subscribe-card our.bowl)]
++  on-save
  ^-  vase
  !>  state
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  `this(state !<(versioned-state old-state))
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark  !!
      %add
    =/  [call=cord =command]  !<([cord command] vase)
    `this(quilt (~(put by quilt) call command))
  ::
  ::  %add and %set are aliases for each other
      %set
    =/  [call=cord =command]  !<([cord command] vase)
    `this(quilt (~(put by quilt) call command))
  ::
      %remove
    =/  call=cord  !<(cord vase)
    `this(quilt (~(del by quilt) call))
  ==
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+  wire  (on-agent:def wire sign)
      [%chat %updates ~]
    ?+    -.sign  (on-agent:def wire sign)
      %watch-ack  `this
        %kick
      :_  this
      ~[(chat-subscribe-card our.bowl)]
    ::
        %fact
        ?+    p.cage.sign  `this
            %channel-response
          =/  =r-channels:channels  !<(r-channels:channels q.cage.sign)
          ?+  -.nest.r-channels  `this  ::switch on kind
              %chat
            ?+  -.r-channel.r-channels  `this
                %post
              ?-  -.r-post.r-channel.r-channels
                  %set
                =/  =post:channels  (need post.r-post.r-channel.r-channels)
                =/  =essay:channels  +.post
                =/  =memo:channels  -.essay
                =/  [call=cord text=cord]  (find-slash memo)
                ?:  &(=(call '') =(text ''))
                  `this  :: do nothing if we get text that's not a gato command
                =/  =command  (~(got by quilt) call)
                :_  this
                ~[(run-thread-card call command nest.r-channels text memo)]
                  %reply  
                `this
                  %reacts
                `this
                  %essay  
                `this
              ==
            ==
          ==
        ==
    ==
  ==
++  on-arvo
  |=  [=wire sign=sign-arvo]
  ^-  (quip card _this)
  ?+  wire  (on-arvo:def wire sign)
      [%result cord cord cord *]
    =/  [%result call=cord ship-cord=cord chat=cord *]  wire
    =/  =ship  (slav %p ship-cord)
    ?+  sign  (on-arvo:def wire sign)
        [%khan %arow %.y %noun *]
      =/  [%khan %arow %.y %noun result=vase]  sign
      =/  =tuna  !<(tuna result)
      :_  this(quilt (replace-vase quilt call vase.tuna))
      :~  %+  message-card  our.bowl
        (message now.bowl [%chat ship chat] (reply-to-content reply.tuna))
      ==
    ==
  ==
++  on-fail   on-fail:def
--