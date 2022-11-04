# dstm
 Don't Shoot The Messenger - pubsub+ system for GameMaker

Originally started this to figure out how to hijack broadcast events to allow objects to send messages... Ultimately decided to make my own pubsub system instead, with some extra features.

Example:
```gml
// Setting up subs
dstmSubAdd("foo");
dstmSubAdd("bar", function() {
 show_debug_message("Look at me ma!");
});

// Sending message
dstmSendMessage("foo");
dstmSendMessage("bar");
```

To check a sub, you would need to add one of these two to the broadcast event:<br>
Basic (pubsub):

```gml
switch(dstmSubGetCurrentName()) {
 case "foo": show_debug_message("Hello world!"); break;
 case "bar" show_debug_message("Goodbye world!"); break;
}
```

Ennhanced (pubsub+):

```gml
dstmSubEvent("foo", "bar"); // Executes all callbacks, maintaining callback scope.
```
