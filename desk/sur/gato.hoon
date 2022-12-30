/-  chat
|%
::  each command is a thread with a vase to store state or configuration such as API keys
::
::  if your thread is in the %foo desk at /ted/ping/pong/hoon, this would be
::  [%foo %ping-pong]
+$  ted  [desk=@tas name=@tas]
+$  command  [=ted =vase]
+$  quilt  (map cord command)
::  your thread is passed a bird when it runs
::  text is the first plaintext element from the triggering message, minus the "/foo " command
::  memo is the raw chat message
::  vase is taken from the quilt
+$  bird  [text=cord =memo:chat =vase]
::  your thread should return a tuna
::  reply is the message you're sending
::  you can update your command's state or config by returning a different vase
+$  tuna  [=reply =vase]
::  you can return either a cord or a full formatted chat message
+$  reply  $@(cord content:chat)
--
