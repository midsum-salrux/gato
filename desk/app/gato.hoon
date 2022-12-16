/-  chat
/+  default-agent, dbug
|%
+$  card  card:agent:gall
--
%-  agent:dbug
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
++  on-init
  ^-  (quip card _this)
  :_  this
  ~[[%pass /chat/writs %agent [our.bowl %chat] %watch /ui]]
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
      [%chat %writs ~]
    ?+    -.sign  (on-agent:def wire sign)
      %watch-ack  `this
        %kick
      :_  this
      ~[[%pass /chat/writs %agent [our.bowl %chat] %watch /ui]]
    ::
        %fact
        ~&  p.cage.sign
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
              ~&  [flag=flag memo=p.delta]
              `this
            ==
          ==
        ==
    ==
  ==
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
