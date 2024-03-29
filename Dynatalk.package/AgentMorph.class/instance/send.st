messaging
send

arg1 ifNil: [actionArgs:={}].
arg2 ifNil: [actionArgs:={arg1}] ifNotNil: [actionArgs:={arg1 . arg2.}] .

agent sendTo: targetAgent  action: actionName args: actionArgs.

arg1:=nil.
arg2:=nil.