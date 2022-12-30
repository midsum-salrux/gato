/-  chat, *gato
/+  default-agent, dbug
|%
+$  version-state
  $%  state-0
  ==
+$  state-0  [%0 =quilt]
+$  card  card:agent:gall
++  chat-subscribe-card
  |=  =ship
  [%pass /chat/updates %agent [ship %chat] %watch /ui]
++  run-thread-card
  |=  [=command text=cord =memo:chat]
  ^-  card
  =/  =bird  [text memo vase.command]
  :*  %pass  /run-command  %arvo  %k  %fard
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
  ['foo' 'bar']
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
++  on-save   on-save:def
++  on-load   on-load:def
++  on-poke   on-poke:def
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
          ::  flag
          =/  =flag:chat  p.action
          =/  =diff:chat  q.q.action
          ?+  -.diff  `this
              %writs
            =/  =delta:writs:chat  q.p.diff
            ?+  -.delta  `this
                %add
              =/  =memo:chat  p.delta
              ?:  =(our.bowl author.memo)  `this
              ::  TODO: parse message for slash commands
              ::  find matching thread from state
              ::  run it
              ::  reply with result
              ::action=(message [our.bowl now.bowl] flag *content:chat)
              =/  [slash=cord text=cord]  (find-slash memo)
              =/  =command  (~(got by quilt) slash)
              :_  this
              ~[(run-thread-card command text memo)]
            ==
          ==
        ==
    ==
  ==
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
