/-  chat, *gato
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =quilt]
+$  card  card:agent:gall
++  chat-subscribe-card
  |=  =ship
  [%pass /chat/updates %agent [ship %chat] %watch /ui]
++  run-thread-card
  |=  [call=cord =command =flag:chat text=cord =memo:chat]
  ^-  card
  =/  =bird  [text memo vase.command]
  :*  %pass  /result/[call]/(scot %p p.flag)/[q.flag]  %arvo  %k  %fard
      desk.ted.command  name.ted.command  %noun
      !>(bird)
  ==
++  message-card
  |=  [our=ship =action:chat]
  ^-  card
  [%pass /chat/poke %agent [our %chat] %poke %chat-action !>(action)]
++  find-slash
  |=  =memo:chat
  ^-  [cord cord]
  ::  find the first raw text segment
  =/  first=cord
    ?-  content.memo
        [%notice *]  !!
        [%story *]
      =/  inlines  q.p.content.memo
      |-
      ?~  inlines  !!
      ?@  i.inlines  i.inlines
      $(inlines t.inlines)
    ==
  =/  [call=tape text=tape]  (scan (trip first) slash-command-rule)
  ~&  [call text]
  [(crip call) (crip text)]
::  "/mycommand lorem ipsum" to ["mycommand" "lorem ipsum"]
++  slash-command-rule
  ;~  (glue (star ace))
    ;~  pfix
      fas
      (plus alp)
    ==
    (star next)
  ==
++  message
  |=  [=id:chat =flag:chat =content:chat]
  ^-  action:chat
  :-  flag
  :-  q.id
  :-  %writs
  :-  id
  :-  %add
  :-  replying=~
  :-  author=p.id
  :-  sent=q.id
  content
++  reply-to-content
  |=  =reply
  ^-  content:chat
  ?^  reply  reply
  [%story [~ ~[reply]]]
++  replace-vase
  |=  [q=quilt call=cord =vase]
  ^-  quilt
  =/  =command  (~(got by q) call)
  (~(put by q) call [ted.command vase])
--
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
            %chat-action-0
          =/  =action:chat  !<(action:chat q.cage.sign)
          =/  =flag:chat  p.action
          =/  =diff:chat  q.q.action
          ?+  -.diff  `this
              %writs
            =/  =delta:writs:chat  q.p.diff
            ?+  -.delta  `this
                %add
              =/  =memo:chat  p.delta
              ::  ?:  =(our.bowl author.memo)  `this
              =/  [call=cord text=cord]  (find-slash memo)
              =/  =command  (~(got by quilt) call)
              :_  this
              ~[(run-thread-card call command flag text memo)]
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
        (message [our.bowl now.bowl] [ship chat] (reply-to-content reply.tuna))
      ==
    ==
  ==
++  on-fail   on-fail:def
--
