Generally speaking, agents running in the system are instantiated from my subclasses. I will interpret the message I received. If I understand it, I will execute the semantics of the message, possibly replying asynchronously with the result of the calculation as needed;  If I do not understand the message, I reply with "Message Not Understood." If there is an error in interpreting the message along the way, I reply with an error message.


"request"
(agent request: 'SqueakDemoAgent' action: 'echo:' args: {'hi'.}) wait.
(agent request: 'PyDemoAgent' action: 'echo' args: '{"content": "hi"}') wait.

"send"
agent send 'SqueakDemoAgent' action: 'echo:' args: {'hi'.}.
