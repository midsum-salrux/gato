/-  chat
|%
+$  ted  [desk=@tas pax=path]
::  the quilt is a map from commands to the threads they run
::  each thread also has a vase to store state or configuration such as API keys
+$  quilt  (map cord (pair ted vase))
::  your thread is passed a bird when it runs
::  text is the first plaintext element from the triggering message, minus the "/foo " command
::  memo is the raw chat message
::  vase is taken from the quilt
+$  bird  [text=cord =memo:chat =vase]
::  your thread should return a tuna
::  reply is the message you're sending
::  you can update your command's state or config by returning a different vase
+$  tuna  (pair reply vase)
::  you can return either a cord or a full formatted chat message
+$  reply  $@(cord content:chat)
--
