/-  chat
/+  default-agent, dbug
|%
+$  card  card:agent:gall
++  chat-subscribe-card
  |=  =ship
  [%pass /chat/updates %agent [ship %chat] %watch /ui]
++  reply
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
  ~&  "GATO ON-AGENT"
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
              ~&  [flag=flag memo=memo]
              ~&  (reply [our.bowl now.bowl] flag *content:chat)
              :_  this
              ::  TODO send action as poke
              ~
            ==
          ==
        ==
    ==
  ==
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
