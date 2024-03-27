I am responsible for looking after a group of agents (including managing their lifecycle). I am like a concierge. Whenever I receive a message from space, I will check the recipient of the message and deliver the message to that agent. If the agent wants to send out a message, it will give it to me first, and then I will forward it to the space.

supervisor := Supervisor new.
agent := SqueakDemoAgent new id: 'SqueakDemoAgent'.
supervisor addAgent: agent.

"print it"
(agent request: 'SqueakDemoAgent' action: 'ping' args: {}) wait. 
(agent request: 'SqueakDemoAgent' action: 'help' args: {}) wait.   
(agent request: 'SqueakDemoAgent' action: 'echo:' args: {'hi'}) wait.  
(agent request: 'SqueakDemoAgent' action: 'add:to:' args: {1 . 2}) wait.  


"(agent request: 'LivelyDemoAgent' action: 'echo' args: {'hi'}) wait."

"sendTo, do it"
agent sendTo: 'SqueakDemoAgent' action: 'echo:' args: {'hi'}